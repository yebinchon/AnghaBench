
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct thermal_zone_device {int dummy; } ;
struct TYPE_9__ {int class; int sensor_id; } ;
struct TYPE_8__ {int mode; int name; } ;
struct TYPE_7__ {TYPE_3__ attr; int show; } ;
struct TYPE_6__ {TYPE_3__ attr; int show; } ;
struct sensor_data {TYPE_4__ info; TYPE_2__ dev_attr_label; TYPE_1__ dev_attr_input; int label; int input; int scale; } ;
struct scpi_thermal_zone {int sensor_id; struct scpi_sensors* scpi_sensors; } ;
struct TYPE_10__ {TYPE_3__** attrs; } ;
struct scpi_sensors {struct sensor_data* data; int thermal_zones; TYPE_5__** groups; TYPE_5__ group; TYPE_3__** attrs; struct scpi_ops* scpi_ops; } ;
struct scpi_ops {int (* sensor_get_capability ) (int*) ;int (* sensor_get_info ) (int,TYPE_4__*) ;} ;
struct platform_device {struct thermal_zone_device dev; } ;
struct of_device_id {int * data; } ;
typedef struct thermal_zone_device device ;




 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct thermal_zone_device*) ;

 int PTR_ERR (struct thermal_zone_device*) ;


 int dev_err (struct thermal_zone_device*,char*) ;
 struct thermal_zone_device* devm_hwmon_device_register_with_groups (struct thermal_zone_device*,char*,struct scpi_sensors*,TYPE_5__**) ;
 void* devm_kcalloc (struct thermal_zone_device*,int,int,int ) ;
 int devm_kfree (struct thermal_zone_device*,struct scpi_thermal_zone*) ;
 void* devm_kzalloc (struct thermal_zone_device*,int,int ) ;
 struct thermal_zone_device* devm_thermal_zone_of_sensor_register (struct thermal_zone_device*,int ,struct scpi_thermal_zone*,int *) ;
 struct scpi_ops* get_scpi_ops () ;
 struct of_device_id* of_match_device (int ,struct thermal_zone_device*) ;
 int platform_set_drvdata (struct platform_device*,struct scpi_sensors*) ;
 int scpi_of_match ;
 int scpi_sensor_ops ;
 int scpi_show_label ;
 int scpi_show_sensor ;
 int snprintf (int ,int,char*,int) ;
 int stub1 (int*) ;
 int stub2 (int,TYPE_4__*) ;
 int sysfs_attr_init (TYPE_3__*) ;

__attribute__((used)) static int scpi_hwmon_probe(struct platform_device *pdev)
{
 u16 nr_sensors, i;
 const u32 *scale;
 int num_temp = 0, num_volt = 0, num_current = 0, num_power = 0;
 int num_energy = 0;
 struct scpi_ops *scpi_ops;
 struct device *hwdev, *dev = &pdev->dev;
 struct scpi_sensors *scpi_sensors;
 const struct of_device_id *of_id;
 int idx, ret;

 scpi_ops = get_scpi_ops();
 if (!scpi_ops)
  return -EPROBE_DEFER;

 ret = scpi_ops->sensor_get_capability(&nr_sensors);
 if (ret)
  return ret;

 if (!nr_sensors)
  return -ENODEV;

 scpi_sensors = devm_kzalloc(dev, sizeof(*scpi_sensors), GFP_KERNEL);
 if (!scpi_sensors)
  return -ENOMEM;

 scpi_sensors->data = devm_kcalloc(dev, nr_sensors,
       sizeof(*scpi_sensors->data), GFP_KERNEL);
 if (!scpi_sensors->data)
  return -ENOMEM;

 scpi_sensors->attrs = devm_kcalloc(dev, (nr_sensors * 2) + 1,
       sizeof(*scpi_sensors->attrs), GFP_KERNEL);
 if (!scpi_sensors->attrs)
  return -ENOMEM;

 scpi_sensors->scpi_ops = scpi_ops;

 of_id = of_match_device(scpi_of_match, &pdev->dev);
 if (!of_id) {
  dev_err(&pdev->dev, "Unable to initialize scpi-hwmon data\n");
  return -ENODEV;
 }
 scale = of_id->data;

 for (i = 0, idx = 0; i < nr_sensors; i++) {
  struct sensor_data *sensor = &scpi_sensors->data[idx];

  ret = scpi_ops->sensor_get_info(i, &sensor->info);
  if (ret)
   return ret;

  switch (sensor->info.class) {
  case 129:
   snprintf(sensor->input, sizeof(sensor->input),
     "temp%d_input", num_temp + 1);
   snprintf(sensor->label, sizeof(sensor->input),
     "temp%d_label", num_temp + 1);
   num_temp++;
   break;
  case 128:
   snprintf(sensor->input, sizeof(sensor->input),
     "in%d_input", num_volt);
   snprintf(sensor->label, sizeof(sensor->input),
     "in%d_label", num_volt);
   num_volt++;
   break;
  case 132:
   snprintf(sensor->input, sizeof(sensor->input),
     "curr%d_input", num_current + 1);
   snprintf(sensor->label, sizeof(sensor->input),
     "curr%d_label", num_current + 1);
   num_current++;
   break;
  case 130:
   snprintf(sensor->input, sizeof(sensor->input),
     "power%d_input", num_power + 1);
   snprintf(sensor->label, sizeof(sensor->input),
     "power%d_label", num_power + 1);
   num_power++;
   break;
  case 131:
   snprintf(sensor->input, sizeof(sensor->input),
     "energy%d_input", num_energy + 1);
   snprintf(sensor->label, sizeof(sensor->input),
     "energy%d_label", num_energy + 1);
   num_energy++;
   break;
  default:
   continue;
  }

  sensor->scale = scale[sensor->info.class];

  sensor->dev_attr_input.attr.mode = 0444;
  sensor->dev_attr_input.show = scpi_show_sensor;
  sensor->dev_attr_input.attr.name = sensor->input;

  sensor->dev_attr_label.attr.mode = 0444;
  sensor->dev_attr_label.show = scpi_show_label;
  sensor->dev_attr_label.attr.name = sensor->label;

  scpi_sensors->attrs[idx << 1] = &sensor->dev_attr_input.attr;
  scpi_sensors->attrs[(idx << 1) + 1] = &sensor->dev_attr_label.attr;

  sysfs_attr_init(scpi_sensors->attrs[idx << 1]);
  sysfs_attr_init(scpi_sensors->attrs[(idx << 1) + 1]);
  idx++;
 }

 scpi_sensors->group.attrs = scpi_sensors->attrs;
 scpi_sensors->groups[0] = &scpi_sensors->group;

 platform_set_drvdata(pdev, scpi_sensors);

 hwdev = devm_hwmon_device_register_with_groups(dev,
   "scpi_sensors", scpi_sensors, scpi_sensors->groups);

 if (IS_ERR(hwdev))
  return PTR_ERR(hwdev);
 INIT_LIST_HEAD(&scpi_sensors->thermal_zones);
 for (i = 0; i < nr_sensors; i++) {
  struct sensor_data *sensor = &scpi_sensors->data[i];
  struct thermal_zone_device *z;
  struct scpi_thermal_zone *zone;

  if (sensor->info.class != 129)
   continue;

  zone = devm_kzalloc(dev, sizeof(*zone), GFP_KERNEL);
  if (!zone)
   return -ENOMEM;

  zone->sensor_id = i;
  zone->scpi_sensors = scpi_sensors;
  z = devm_thermal_zone_of_sensor_register(dev,
        sensor->info.sensor_id,
        zone,
        &scpi_sensor_ops);






  if (IS_ERR(z))
   devm_kfree(dev, zone);
 }

 return 0;
}
