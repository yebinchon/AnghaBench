
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dm_raid_superblock {int * extended_failed_devices; int compat_features; int failed_devices; } ;


 int ARRAY_SIZE (int *) ;
 int FEATURE_FLAG_SUPPORTS_V190 ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void sb_retrieve_failed_devices(struct dm_raid_superblock *sb, uint64_t *failed_devices)
{
 failed_devices[0] = le64_to_cpu(sb->failed_devices);
 memset(failed_devices + 1, 0, sizeof(sb->extended_failed_devices));

 if (le32_to_cpu(sb->compat_features) & FEATURE_FLAG_SUPPORTS_V190) {
  int i = ARRAY_SIZE(sb->extended_failed_devices);

  while (i--)
   failed_devices[i+1] = le64_to_cpu(sb->extended_failed_devices[i]);
 }
}
