
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dm_target {struct clone* private; } ;
struct clone {unsigned int nr_ctr_args; int * ctr_args; TYPE_6__* source_dev; TYPE_4__* dest_dev; TYPE_2__* metadata_dev; int hydrations_in_flight; int nr_regions; int cmd; scalar_t__ region_size; } ;
typedef int status_type_t ;
typedef int ssize_t ;
typedef scalar_t__ dm_block_t ;
struct TYPE_12__ {TYPE_5__* bdev; } ;
struct TYPE_11__ {int bd_dev; } ;
struct TYPE_10__ {TYPE_3__* bdev; } ;
struct TYPE_9__ {int bd_dev; } ;
struct TYPE_8__ {TYPE_1__* bdev; } ;
struct TYPE_7__ {int bd_dev; } ;


 int BDEVNAME_SIZE ;



 int DMEMIT (char*,...) ;
 int DMERR (char*,int ,int) ;
 int DM_CLONE_METADATA_BLOCK_SIZE ;
 unsigned int DM_STATUS_NOFLUSH_FLAG ;


 int atomic_read (int *) ;
 int clone_device_name (struct clone*) ;
 int commit_metadata (struct clone*) ;
 int dm_clone_get_free_metadata_block_count (int ,scalar_t__*) ;
 int dm_clone_get_metadata_dev_size (int ,scalar_t__*) ;
 int dm_clone_nr_of_hydrated_regions (int ) ;
 int dm_suspended (struct dm_target*) ;
 int emit_core_args (struct clone*,char*,unsigned int,int *) ;
 int emit_flags (struct clone*,char*,unsigned int,int *) ;
 int format_dev_t (char*,int ) ;
 int get_clone_mode (struct clone*) ;

__attribute__((used)) static void clone_status(struct dm_target *ti, status_type_t type,
    unsigned int status_flags, char *result,
    unsigned int maxlen)
{
 int r;
 unsigned int i;
 ssize_t sz = 0;
 dm_block_t nr_free_metadata_blocks = 0;
 dm_block_t nr_metadata_blocks = 0;
 char buf[BDEVNAME_SIZE];
 struct clone *clone = ti->private;

 switch (type) {
 case 129:
  if (get_clone_mode(clone) == 132) {
   DMEMIT("Fail");
   break;
  }


  if (!(status_flags & DM_STATUS_NOFLUSH_FLAG) && !dm_suspended(ti))
   (void) commit_metadata(clone);

  r = dm_clone_get_free_metadata_block_count(clone->cmd, &nr_free_metadata_blocks);

  if (r) {
   DMERR("%s: dm_clone_get_free_metadata_block_count returned %d",
         clone_device_name(clone), r);
   goto error;
  }

  r = dm_clone_get_metadata_dev_size(clone->cmd, &nr_metadata_blocks);

  if (r) {
   DMERR("%s: dm_clone_get_metadata_dev_size returned %d",
         clone_device_name(clone), r);
   goto error;
  }

  DMEMIT("%u %llu/%llu %llu %lu/%lu %u ",
         DM_CLONE_METADATA_BLOCK_SIZE,
         (unsigned long long)(nr_metadata_blocks - nr_free_metadata_blocks),
         (unsigned long long)nr_metadata_blocks,
         (unsigned long long)clone->region_size,
         dm_clone_nr_of_hydrated_regions(clone->cmd),
         clone->nr_regions,
         atomic_read(&clone->hydrations_in_flight));

  emit_flags(clone, result, maxlen, &sz);
  emit_core_args(clone, result, maxlen, &sz);

  switch (get_clone_mode(clone)) {
  case 130:
   DMEMIT("rw");
   break;
  case 131:
   DMEMIT("ro");
   break;
  case 132:
   DMEMIT("Fail");
  }

  break;

 case 128:
  format_dev_t(buf, clone->metadata_dev->bdev->bd_dev);
  DMEMIT("%s ", buf);

  format_dev_t(buf, clone->dest_dev->bdev->bd_dev);
  DMEMIT("%s ", buf);

  format_dev_t(buf, clone->source_dev->bdev->bd_dev);
  DMEMIT("%s", buf);

  for (i = 0; i < clone->nr_ctr_args; i++)
   DMEMIT(" %s", clone->ctr_args[i]);
 }

 return;

error:
 DMEMIT("Error");
}
