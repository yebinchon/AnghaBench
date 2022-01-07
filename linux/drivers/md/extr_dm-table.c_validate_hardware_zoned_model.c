
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int md; } ;
typedef enum blk_zoned_model { ____Placeholder_blk_zoned_model } blk_zoned_model ;


 int BLK_ZONED_NONE ;
 int DMERR (char*,int ) ;
 int EINVAL ;
 int dm_device_name (int ) ;
 int dm_table_matches_zone_sectors (struct dm_table*,unsigned int) ;
 int dm_table_supports_zoned_model (struct dm_table*,int) ;
 int is_power_of_2 (unsigned int) ;

__attribute__((used)) static int validate_hardware_zoned_model(struct dm_table *table,
      enum blk_zoned_model zoned_model,
      unsigned int zone_sectors)
{
 if (zoned_model == BLK_ZONED_NONE)
  return 0;

 if (!dm_table_supports_zoned_model(table, zoned_model)) {
  DMERR("%s: zoned model is not consistent across all devices",
        dm_device_name(table->md));
  return -EINVAL;
 }


 if (!zone_sectors || !is_power_of_2(zone_sectors))
  return -EINVAL;

 if (!dm_table_matches_zone_sectors(table, zone_sectors)) {
  DMERR("%s: zone sectors is not consistent across all devices",
        dm_device_name(table->md));
  return -EINVAL;
 }

 return 0;
}
