
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hid_sensor_custom {int sensor_field_count; TYPE_3__* fields; TYPE_2__* pdev; } ;
struct TYPE_6__ {int hid_custom_attribute_group; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int kfree (TYPE_3__*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void hid_sensor_custom_remove_attributes(struct hid_sensor_custom *
        sensor_inst)
{
 int i;

 for (i = 0; i < sensor_inst->sensor_field_count; ++i)
  sysfs_remove_group(&sensor_inst->pdev->dev.kobj,
       &sensor_inst->fields[i].
       hid_custom_attribute_group);

 kfree(sensor_inst->fields);
}
