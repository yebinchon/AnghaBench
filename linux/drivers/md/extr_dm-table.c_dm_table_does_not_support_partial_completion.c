
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int dummy; } ;


 int device_no_partial_completion ;
 int dm_table_all_devices_attribute (struct dm_table*,int ) ;

__attribute__((used)) static bool dm_table_does_not_support_partial_completion(struct dm_table *t)
{
 return dm_table_all_devices_attribute(t, device_no_partial_completion);
}
