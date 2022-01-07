
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


struct aem_data {TYPE_1__* pdev; TYPE_3__* sensors; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_12__ {TYPE_2__ attr; } ;
struct TYPE_11__ {TYPE_6__ dev_attr; } ;
struct TYPE_10__ {TYPE_6__ dev_attr; } ;
struct TYPE_9__ {TYPE_6__ dev_attr; } ;
struct TYPE_7__ {int dev; } ;


 int AEM_NUM_SENSORS ;
 int device_remove_file (int *,TYPE_6__*) ;
 TYPE_5__ sensor_dev_attr_name ;
 TYPE_4__ sensor_dev_attr_version ;

__attribute__((used)) static void aem_remove_sensors(struct aem_data *data)
{
 int i;

 for (i = 0; i < AEM_NUM_SENSORS; i++) {
  if (!data->sensors[i].dev_attr.attr.name)
   continue;
  device_remove_file(&data->pdev->dev,
       &data->sensors[i].dev_attr);
 }

 device_remove_file(&data->pdev->dev,
      &sensor_dev_attr_name.dev_attr);
 device_remove_file(&data->pdev->dev,
      &sensor_dev_attr_version.dev_attr);
}
