
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct superblock_disk {int version; } ;


 int DMERR (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int EINVAL ;
 scalar_t__ MAX_ERA_VERSION ;
 scalar_t__ MIN_ERA_VERSION ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int check_metadata_version(struct superblock_disk *disk)
{
 uint32_t metadata_version = le32_to_cpu(disk->version);
 if (metadata_version < MIN_ERA_VERSION || metadata_version > MAX_ERA_VERSION) {
  DMERR("Era metadata version %u found, but only versions between %u and %u supported.",
        metadata_version, MIN_ERA_VERSION, MAX_ERA_VERSION);
  return -EINVAL;
 }

 return 0;
}
