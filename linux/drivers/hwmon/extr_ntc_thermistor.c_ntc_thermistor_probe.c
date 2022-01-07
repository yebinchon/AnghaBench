
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device_id {size_t driver_data; int name; } ;
struct ntc_thermistor_platform_data {scalar_t__ pullup_uv; scalar_t__ pullup_ohm; scalar_t__ connect; scalar_t__ pulldown_ohm; int * read_uv; scalar_t__ read_ohm; } ;
struct platform_device {struct ntc_thermistor_platform_data dev; } ;
struct of_device_id {struct platform_device_id* data; } ;
struct ntc_data {int n_comp; int comp; struct ntc_thermistor_platform_data* pdata; } ;
struct device {scalar_t__ pullup_uv; scalar_t__ pullup_ohm; scalar_t__ connect; scalar_t__ pulldown_ohm; int * read_uv; scalar_t__ read_ohm; } ;
struct TYPE_3__ {int n_comp; int comp; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ntc_thermistor_platform_data*) ;
 scalar_t__ NTC_CONNECTED_GROUND ;
 scalar_t__ NTC_CONNECTED_POSITIVE ;
 int PTR_ERR (struct ntc_thermistor_platform_data*) ;
 int dev_err (struct ntc_thermistor_platform_data*,char*,...) ;
 struct ntc_thermistor_platform_data* dev_get_platdata (struct ntc_thermistor_platform_data*) ;
 int dev_info (struct ntc_thermistor_platform_data*,char*,int ) ;
 int dev_warn (struct ntc_thermistor_platform_data*,char*) ;
 struct ntc_thermistor_platform_data* devm_hwmon_device_register_with_info (struct ntc_thermistor_platform_data*,int ,struct ntc_data*,int *,int *) ;
 struct ntc_data* devm_kzalloc (struct ntc_thermistor_platform_data*,int,int ) ;
 int ntc_chip_info ;
 int ntc_match ;
 struct ntc_thermistor_platform_data* ntc_thermistor_parse_dt (struct ntc_thermistor_platform_data*) ;
 TYPE_1__* ntc_type ;
 struct of_device_id* of_match_device (int ,struct ntc_thermistor_platform_data*) ;
 int of_match_ptr (int ) ;
 struct platform_device_id* platform_get_device_id (struct platform_device*) ;

__attribute__((used)) static int ntc_thermistor_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 const struct of_device_id *of_id =
   of_match_device(of_match_ptr(ntc_match), dev);
 const struct platform_device_id *pdev_id;
 struct ntc_thermistor_platform_data *pdata;
 struct device *hwmon_dev;
 struct ntc_data *data;

 pdata = ntc_thermistor_parse_dt(dev);
 if (IS_ERR(pdata))
  return PTR_ERR(pdata);
 else if (pdata == ((void*)0))
  pdata = dev_get_platdata(dev);

 if (!pdata) {
  dev_err(dev, "No platform init data supplied.\n");
  return -ENODEV;
 }


 if (!pdata->read_uv && !pdata->read_ohm) {
  dev_err(dev,
   "Both read_uv and read_ohm missing. Need either one of the two.\n");
  return -EINVAL;
 }

 if (pdata->read_uv && pdata->read_ohm) {
  dev_warn(dev,
    "Only one of read_uv and read_ohm is needed; ignoring read_uv.\n");
  pdata->read_uv = ((void*)0);
 }

 if (pdata->read_uv && (pdata->pullup_uv == 0 ||
    (pdata->pullup_ohm == 0 && pdata->connect ==
     NTC_CONNECTED_GROUND) ||
    (pdata->pulldown_ohm == 0 && pdata->connect ==
     NTC_CONNECTED_POSITIVE) ||
    (pdata->connect != NTC_CONNECTED_POSITIVE &&
     pdata->connect != NTC_CONNECTED_GROUND))) {
  dev_err(dev, "Required data to use read_uv not supplied.\n");
  return -EINVAL;
 }

 data = devm_kzalloc(dev, sizeof(struct ntc_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 pdev_id = of_id ? of_id->data : platform_get_device_id(pdev);

 data->pdata = pdata;

 if (pdev_id->driver_data >= ARRAY_SIZE(ntc_type)) {
  dev_err(dev, "Unknown device type: %lu(%s)\n",
    pdev_id->driver_data, pdev_id->name);
  return -EINVAL;
 }

 data->comp = ntc_type[pdev_id->driver_data].comp;
 data->n_comp = ntc_type[pdev_id->driver_data].n_comp;

 hwmon_dev = devm_hwmon_device_register_with_info(dev, pdev_id->name,
        data, &ntc_chip_info,
        ((void*)0));
 if (IS_ERR(hwmon_dev)) {
  dev_err(dev, "unable to register as hwmon device.\n");
  return PTR_ERR(hwmon_dev);
 }

 dev_info(dev, "Thermistor type: %s successfully probed.\n",
   pdev_id->name);

 return 0;
}
