
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct cache_disk_superblock {int version; } ;


 int DMERR (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int EINVAL ;
 scalar_t__ MAX_CACHE_VERSION ;
 scalar_t__ MIN_CACHE_VERSION ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int check_metadata_version(struct cache_disk_superblock *disk_super)
{
 uint32_t metadata_version = le32_to_cpu(disk_super->version);

 if (metadata_version < MIN_CACHE_VERSION || metadata_version > MAX_CACHE_VERSION) {
  DMERR("Cache metadata version %u found, but only versions between %u and %u supported.",
        metadata_version, MIN_CACHE_VERSION, MAX_CACHE_VERSION);
  return -EINVAL;
 }

 return 0;
}
