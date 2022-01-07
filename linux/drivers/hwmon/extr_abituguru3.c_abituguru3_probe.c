
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct platform_device {int dev; } ;
struct abituguru3_data {char* sysfs_names; TYPE_6__* sysfs_attr; int hwmon_dev; TYPE_1__* sensors; int update_lock; int addr; } ;
struct TYPE_16__ {int id; TYPE_1__* sensors; } ;
struct TYPE_11__ {char* name; } ;
struct TYPE_13__ {TYPE_2__ attr; } ;
struct TYPE_15__ {TYPE_4__ dev_attr; } ;
struct TYPE_14__ {int index; TYPE_4__ dev_attr; } ;
struct TYPE_12__ {int start; } ;
struct TYPE_10__ {int type; scalar_t__ name; } ;


 int ABIT_UGURU3_BOARD_ID ;
 int ABIT_UGURU3_MAX_NO_SENSORS ;
 int ABIT_UGURU3_MISC_BANK ;
 int ABIT_UGURU3_SYSFS_NAMES_LENGTH ;
 int ARRAY_SIZE (TYPE_7__*) ;
 int ENAMETOOLONG ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 TYPE_8__* abituguru3_motherboards ;
 int abituguru3_read (struct abituguru3_data*,int ,int ,int,scalar_t__*) ;
 TYPE_7__* abituguru3_sysfs_attr ;
 TYPE_6__** abituguru3_sysfs_templ ;
 int abituguru3_update_device (int *) ;
 scalar_t__ device_create_file (int *,TYPE_4__*) ;
 int device_remove_file (int *,TYPE_4__*) ;
 struct abituguru3_data* devm_kzalloc (int *,int,int ) ;
 int hwmon_device_register (int *) ;
 int mutex_init (int *) ;
 unsigned int never_happen ;
 TYPE_3__* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct abituguru3_data*) ;
 int pr_err (char*,unsigned int,int ) ;
 int pr_info (char*,unsigned int) ;
 int report_this ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int abituguru3_probe(struct platform_device *pdev)
{
 const int no_sysfs_attr[3] = { 10, 8, 7 };
 int sensor_index[3] = { 0, 1, 1 };
 struct abituguru3_data *data;
 int i, j, type, used, sysfs_names_free, sysfs_attr_i, res = -ENODEV;
 char *sysfs_filename;
 u8 buf[2];
 u16 id;

 data = devm_kzalloc(&pdev->dev, sizeof(struct abituguru3_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->addr = platform_get_resource(pdev, IORESOURCE_IO, 0)->start;
 mutex_init(&data->update_lock);
 platform_set_drvdata(pdev, data);


 i = abituguru3_read(data, ABIT_UGURU3_MISC_BANK, ABIT_UGURU3_BOARD_ID,
       2, buf);
 if (i != 2)
  goto abituguru3_probe_error;


 if (!abituguru3_update_device(&pdev->dev))
  goto abituguru3_probe_error;


 id = ((u16)buf[0] << 8) | (u16)buf[1];
 for (i = 0; abituguru3_motherboards[i].id; i++)
  if (abituguru3_motherboards[i].id == id)
   break;
 if (!abituguru3_motherboards[i].id) {
  pr_err("error unknown motherboard ID: %04X. %s\n",
         (unsigned int)id, report_this);
  goto abituguru3_probe_error;
 }
 data->sensors = abituguru3_motherboards[i].sensors;

 pr_info("found Abit uGuru3, motherboard ID: %04X\n", (unsigned int)id);


 sysfs_attr_i = 0;
 sysfs_filename = data->sysfs_names;
 sysfs_names_free = ABIT_UGURU3_SYSFS_NAMES_LENGTH;
 for (i = 0; data->sensors[i].name; i++) {

  if (i >= ABIT_UGURU3_MAX_NO_SENSORS) {
   pr_err("Fatal error motherboard has more sensors then ABIT_UGURU3_MAX_NO_SENSORS. %s %s\n",
          never_happen, report_this);
   res = -ENAMETOOLONG;
   goto abituguru3_probe_error;
  }
  type = data->sensors[i].type;
  for (j = 0; j < no_sysfs_attr[type]; j++) {
   used = snprintf(sysfs_filename, sysfs_names_free,
    abituguru3_sysfs_templ[type][j].dev_attr.attr.
    name, sensor_index[type]) + 1;
   data->sysfs_attr[sysfs_attr_i] =
    abituguru3_sysfs_templ[type][j];
   data->sysfs_attr[sysfs_attr_i].dev_attr.attr.name =
    sysfs_filename;
   data->sysfs_attr[sysfs_attr_i].index = i;
   sysfs_filename += used;
   sysfs_names_free -= used;
   sysfs_attr_i++;
  }
  sensor_index[type]++;
 }

 if (sysfs_names_free < 0) {
  pr_err("Fatal error ran out of space for sysfs attr names. %s %s\n",
         never_happen, report_this);
  res = -ENAMETOOLONG;
  goto abituguru3_probe_error;
 }


 for (i = 0; i < sysfs_attr_i; i++)
  if (device_create_file(&pdev->dev,
    &data->sysfs_attr[i].dev_attr))
   goto abituguru3_probe_error;
 for (i = 0; i < ARRAY_SIZE(abituguru3_sysfs_attr); i++)
  if (device_create_file(&pdev->dev,
    &abituguru3_sysfs_attr[i].dev_attr))
   goto abituguru3_probe_error;

 data->hwmon_dev = hwmon_device_register(&pdev->dev);
 if (IS_ERR(data->hwmon_dev)) {
  res = PTR_ERR(data->hwmon_dev);
  goto abituguru3_probe_error;
 }

 return 0;

abituguru3_probe_error:
 for (i = 0; data->sysfs_attr[i].dev_attr.attr.name; i++)
  device_remove_file(&pdev->dev, &data->sysfs_attr[i].dev_attr);
 for (i = 0; i < ARRAY_SIZE(abituguru3_sysfs_attr); i++)
  device_remove_file(&pdev->dev,
   &abituguru3_sysfs_attr[i].dev_attr);
 return res;
}
