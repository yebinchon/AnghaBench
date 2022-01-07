
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dm_cache_metadata {TYPE_1__* bdev; } ;
struct cache_disk_superblock {int compat_ro_flags; int incompat_flags; } ;
struct TYPE_2__ {int bd_disk; } ;


 int DMERR (char*,unsigned long) ;
 int DM_CACHE_FEATURE_COMPAT_RO_SUPP ;
 int DM_CACHE_FEATURE_INCOMPAT_SUPP ;
 int EINVAL ;
 scalar_t__ get_disk_ro (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int __check_incompat_features(struct cache_disk_superblock *disk_super,
         struct dm_cache_metadata *cmd)
{
 uint32_t incompat_flags, features;

 incompat_flags = le32_to_cpu(disk_super->incompat_flags);
 features = incompat_flags & ~DM_CACHE_FEATURE_INCOMPAT_SUPP;
 if (features) {
  DMERR("could not access metadata due to unsupported optional features (%lx).",
        (unsigned long)features);
  return -EINVAL;
 }




 if (get_disk_ro(cmd->bdev->bd_disk))
  return 0;

 features = le32_to_cpu(disk_super->compat_ro_flags) & ~DM_CACHE_FEATURE_COMPAT_RO_SUPP;
 if (features) {
  DMERR("could not access metadata RDWR due to unsupported optional features (%lx).",
        (unsigned long)features);
  return -EINVAL;
 }

 return 0;
}
