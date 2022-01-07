
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ibmpex_bmc_data {TYPE_2__* sensors; int bmc_device; } ;
struct TYPE_7__ {char* name; int mode; } ;
struct TYPE_8__ {TYPE_3__ attr; int show; } ;
struct TYPE_6__ {TYPE_1__* attr; } ;
struct TYPE_5__ {int index; int nr; TYPE_4__ dev_attr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int POWER_SENSOR ;
 int TEMP_SENSOR ;
 int device_create_file (int ,TYPE_4__*) ;
 int ibmpex_show_sensor ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 char** sensor_name_suffixes ;
 int sprintf (char*,char*,int,char*) ;
 int sysfs_attr_init (TYPE_3__*) ;

__attribute__((used)) static int create_sensor(struct ibmpex_bmc_data *data, int type,
    int counter, int sensor, int func)
{
 int err;
 char *n;

 n = kmalloc(32, GFP_KERNEL);
 if (!n)
  return -ENOMEM;

 if (type == TEMP_SENSOR)
  sprintf(n, "temp%d_input%s",
   counter, sensor_name_suffixes[func]);
 else if (type == POWER_SENSOR)
  sprintf(n, "power%d_average%s",
   counter, sensor_name_suffixes[func]);

 sysfs_attr_init(&data->sensors[sensor].attr[func].dev_attr.attr);
 data->sensors[sensor].attr[func].dev_attr.attr.name = n;
 data->sensors[sensor].attr[func].dev_attr.attr.mode = 0444;
 data->sensors[sensor].attr[func].dev_attr.show = ibmpex_show_sensor;
 data->sensors[sensor].attr[func].index = sensor;
 data->sensors[sensor].attr[func].nr = func;

 err = device_create_file(data->bmc_device,
     &data->sensors[sensor].attr[func].dev_attr);
 if (err) {
  data->sensors[sensor].attr[func].dev_attr.attr.name = ((void*)0);
  kfree(n);
  return err;
 }

 return 0;
}
