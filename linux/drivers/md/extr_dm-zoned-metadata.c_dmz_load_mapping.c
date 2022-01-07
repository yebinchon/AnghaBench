
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {unsigned int nr_chunks; scalar_t__ nr_reserved_seq; int unmap_nr_seq; int unmap_seq_list; int nr_seq; int nr_reserved_seq_zones; int reserved_seq_zones_list; int unmap_nr_rnd; int unmap_rnd_list; int nr_rnd; int map_rnd_list; int map_seq_list; struct dmz_mblock** map_mblk; int nr_map_blocks; struct dmz_dev* dev; } ;
struct dmz_mblock {scalar_t__ data; } ;
struct dmz_mblk {int dummy; } ;
struct dmz_map {int bzone_id; int dzone_id; } ;
struct dmz_dev {unsigned int nr_zones; } ;
struct dm_zone {unsigned int chunk; int link; int flags; struct dm_zone* bzone; } ;


 int DMZ_BUF ;
 int DMZ_DATA ;
 unsigned int DMZ_MAP_ENTRIES ;
 unsigned int DMZ_MAP_UNMAPPED ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dmz_mblock*) ;
 int PTR_ERR (struct dmz_mblock*) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dmz_dev_err (struct dmz_dev*,char*,unsigned int,unsigned int) ;
 struct dm_zone* dmz_get (struct dmz_metadata*,unsigned int) ;
 struct dmz_mblock* dmz_get_mblock (struct dmz_metadata*,unsigned int) ;
 int dmz_get_zone_weight (struct dmz_metadata*,struct dm_zone*) ;
 scalar_t__ dmz_is_data (struct dm_zone*) ;
 scalar_t__ dmz_is_meta (struct dm_zone*) ;
 scalar_t__ dmz_is_rnd (struct dm_zone*) ;
 struct dmz_mblock** kcalloc (int ,int,int ) ;
 unsigned int le32_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int dmz_load_mapping(struct dmz_metadata *zmd)
{
 struct dmz_dev *dev = zmd->dev;
 struct dm_zone *dzone, *bzone;
 struct dmz_mblock *dmap_mblk = ((void*)0);
 struct dmz_map *dmap;
 unsigned int i = 0, e = 0, chunk = 0;
 unsigned int dzone_id;
 unsigned int bzone_id;


 zmd->map_mblk = kcalloc(zmd->nr_map_blocks,
    sizeof(struct dmz_mblk *), GFP_KERNEL);
 if (!zmd->map_mblk)
  return -ENOMEM;


 while (chunk < zmd->nr_chunks) {
  if (!dmap_mblk) {

   dmap_mblk = dmz_get_mblock(zmd, i + 1);
   if (IS_ERR(dmap_mblk))
    return PTR_ERR(dmap_mblk);
   zmd->map_mblk[i] = dmap_mblk;
   dmap = (struct dmz_map *) dmap_mblk->data;
   i++;
   e = 0;
  }


  dzone_id = le32_to_cpu(dmap[e].dzone_id);
  if (dzone_id == DMZ_MAP_UNMAPPED)
   goto next;

  if (dzone_id >= dev->nr_zones) {
   dmz_dev_err(dev, "Chunk %u mapping: invalid data zone ID %u",
        chunk, dzone_id);
   return -EIO;
  }

  dzone = dmz_get(zmd, dzone_id);
  set_bit(DMZ_DATA, &dzone->flags);
  dzone->chunk = chunk;
  dmz_get_zone_weight(zmd, dzone);

  if (dmz_is_rnd(dzone))
   list_add_tail(&dzone->link, &zmd->map_rnd_list);
  else
   list_add_tail(&dzone->link, &zmd->map_seq_list);


  bzone_id = le32_to_cpu(dmap[e].bzone_id);
  if (bzone_id == DMZ_MAP_UNMAPPED)
   goto next;

  if (bzone_id >= dev->nr_zones) {
   dmz_dev_err(dev, "Chunk %u mapping: invalid buffer zone ID %u",
        chunk, bzone_id);
   return -EIO;
  }

  bzone = dmz_get(zmd, bzone_id);
  if (!dmz_is_rnd(bzone)) {
   dmz_dev_err(dev, "Chunk %u mapping: invalid buffer zone %u",
        chunk, bzone_id);
   return -EIO;
  }

  set_bit(DMZ_DATA, &bzone->flags);
  set_bit(DMZ_BUF, &bzone->flags);
  bzone->chunk = chunk;
  bzone->bzone = dzone;
  dzone->bzone = bzone;
  dmz_get_zone_weight(zmd, bzone);
  list_add_tail(&bzone->link, &zmd->map_rnd_list);
next:
  chunk++;
  e++;
  if (e >= DMZ_MAP_ENTRIES)
   dmap_mblk = ((void*)0);
 }






 for (i = 0; i < dev->nr_zones; i++) {
  dzone = dmz_get(zmd, i);
  if (dmz_is_meta(dzone))
   continue;

  if (dmz_is_rnd(dzone))
   zmd->nr_rnd++;
  else
   zmd->nr_seq++;

  if (dmz_is_data(dzone)) {

   continue;
  }


  set_bit(DMZ_DATA, &dzone->flags);
  dzone->chunk = DMZ_MAP_UNMAPPED;
  if (dmz_is_rnd(dzone)) {
   list_add_tail(&dzone->link, &zmd->unmap_rnd_list);
   atomic_inc(&zmd->unmap_nr_rnd);
  } else if (atomic_read(&zmd->nr_reserved_seq_zones) < zmd->nr_reserved_seq) {
   list_add_tail(&dzone->link, &zmd->reserved_seq_zones_list);
   atomic_inc(&zmd->nr_reserved_seq_zones);
   zmd->nr_seq--;
  } else {
   list_add_tail(&dzone->link, &zmd->unmap_seq_list);
   atomic_inc(&zmd->unmap_nr_seq);
  }
 }

 return 0;
}
