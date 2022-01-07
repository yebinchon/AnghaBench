
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int fail_io; int hydration_done; int region_map; int nr_regions; scalar_t__ read_only; int bitmap_lock; int lock; int nr_words; void* region_size; void* target_size; struct block_device* bdev; } ;
struct block_device {int dummy; } ;
typedef void* sector_t ;


 int BITS_TO_LONGS (int ) ;
 int DMERR (char*) ;
 int ENOMEM ;
 struct dm_clone_metadata* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int __create_persistent_data_structures (struct dm_clone_metadata*,int) ;
 int __destroy_persistent_data_structures (struct dm_clone_metadata*) ;
 int __load_bitset_in_core (struct dm_clone_metadata*) ;
 scalar_t__ bitmap_full (int ,int ) ;
 int bitmap_size (int ) ;
 int dirty_map_init (struct dm_clone_metadata*) ;
 int dm_sector_div_up (void*,void*) ;
 int init_rwsem (int *) ;
 int kfree (struct dm_clone_metadata*) ;
 int kvfree (int ) ;
 int kvmalloc (int ,int ) ;
 struct dm_clone_metadata* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct dm_clone_metadata *dm_clone_metadata_open(struct block_device *bdev,
       sector_t target_size,
       sector_t region_size)
{
 int r;
 struct dm_clone_metadata *cmd;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  DMERR("Failed to allocate memory for dm-clone metadata");
  return ERR_PTR(-ENOMEM);
 }

 cmd->bdev = bdev;
 cmd->target_size = target_size;
 cmd->region_size = region_size;
 cmd->nr_regions = dm_sector_div_up(cmd->target_size, cmd->region_size);
 cmd->nr_words = BITS_TO_LONGS(cmd->nr_regions);

 init_rwsem(&cmd->lock);
 spin_lock_init(&cmd->bitmap_lock);
 cmd->read_only = 0;
 cmd->fail_io = 0;
 cmd->hydration_done = 0;

 cmd->region_map = kvmalloc(bitmap_size(cmd->nr_regions), GFP_KERNEL);
 if (!cmd->region_map) {
  DMERR("Failed to allocate memory for region bitmap");
  r = -ENOMEM;
  goto out_with_md;
 }

 r = __create_persistent_data_structures(cmd, 1);
 if (r)
  goto out_with_region_map;

 r = __load_bitset_in_core(cmd);
 if (r) {
  DMERR("Failed to load on-disk region map");
  goto out_with_pds;
 }

 r = dirty_map_init(cmd);
 if (r)
  goto out_with_pds;

 if (bitmap_full(cmd->region_map, cmd->nr_regions))
  cmd->hydration_done = 1;

 return cmd;

out_with_pds:
 __destroy_persistent_data_structures(cmd);

out_with_region_map:
 kvfree(cmd->region_map);

out_with_md:
 kfree(cmd);

 return ERR_PTR(r);
}
