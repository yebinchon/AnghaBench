
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_hwmon_pdata {struct s3c_hwmon_chcfg** in; } ;
struct s3c_hwmon_chcfg {int mult; scalar_t__ div; } ;
struct s3c_hwmon {int client; int hwmon_dev; int * attrs; int lock; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (struct s3c_hwmon_chcfg**) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 struct s3c_hwmon_pdata* dev_get_platdata (int *) ;
 int dev_warn (int *,char*,int) ;
 struct s3c_hwmon* devm_kzalloc (int *,int,int ) ;
 int hwmon_device_register (int *) ;
 int hwmon_device_unregister (int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct s3c_hwmon*) ;
 int s3c_adc_register (struct platform_device*,int *,int *,int ) ;
 int s3c_adc_release (int ) ;
 int s3c_hwmon_add_raw (int *) ;
 int s3c_hwmon_create_attr (int *,struct s3c_hwmon_chcfg*,int *,int) ;
 int s3c_hwmon_remove_attr (int *,int *) ;
 int s3c_hwmon_remove_raw (int *) ;

__attribute__((used)) static int s3c_hwmon_probe(struct platform_device *dev)
{
 struct s3c_hwmon_pdata *pdata = dev_get_platdata(&dev->dev);
 struct s3c_hwmon *hwmon;
 int ret = 0;
 int i;

 if (!pdata) {
  dev_err(&dev->dev, "no platform data supplied\n");
  return -EINVAL;
 }

 hwmon = devm_kzalloc(&dev->dev, sizeof(struct s3c_hwmon), GFP_KERNEL);
 if (hwmon == ((void*)0))
  return -ENOMEM;

 platform_set_drvdata(dev, hwmon);

 mutex_init(&hwmon->lock);



 hwmon->client = s3c_adc_register(dev, ((void*)0), ((void*)0), 0);
 if (IS_ERR(hwmon->client)) {
  dev_err(&dev->dev, "cannot register adc\n");
  return PTR_ERR(hwmon->client);
 }



 ret = s3c_hwmon_add_raw(&dev->dev);
 if (ret)
  goto err_registered;



 hwmon->hwmon_dev = hwmon_device_register(&dev->dev);
 if (IS_ERR(hwmon->hwmon_dev)) {
  dev_err(&dev->dev, "error registering with hwmon\n");
  ret = PTR_ERR(hwmon->hwmon_dev);
  goto err_raw_attribute;
 }

 for (i = 0; i < ARRAY_SIZE(pdata->in); i++) {
  struct s3c_hwmon_chcfg *cfg = pdata->in[i];

  if (!cfg)
   continue;

  if (cfg->mult >= 0x10000)
   dev_warn(&dev->dev,
     "channel %d multiplier too large\n",
     i);

  if (cfg->div == 0) {
   dev_err(&dev->dev, "channel %d divider zero\n", i);
   continue;
  }

  ret = s3c_hwmon_create_attr(&dev->dev, pdata->in[i],
         &hwmon->attrs[i], i);
  if (ret) {
   dev_err(&dev->dev,
     "error creating channel %d\n", i);

   for (i--; i >= 0; i--)
    s3c_hwmon_remove_attr(&dev->dev,
             &hwmon->attrs[i]);

   goto err_hwmon_register;
  }
 }

 return 0;

 err_hwmon_register:
 hwmon_device_unregister(hwmon->hwmon_dev);

 err_raw_attribute:
 s3c_hwmon_remove_raw(&dev->dev);

 err_registered:
 s3c_adc_release(hwmon->client);

 return ret;
}
