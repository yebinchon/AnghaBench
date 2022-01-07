
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct via686a_data {char* name; int hwmon_dev; int update_lock; scalar_t__ addr; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_9__ {int kobj; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_8__ {TYPE_1__ driver; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int VIA686A_EXTENT ;
 int dev_err (TYPE_3__*,char*,unsigned long,unsigned long) ;
 struct via686a_data* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_region (TYPE_3__*,scalar_t__,int ,int ) ;
 int hwmon_device_register (TYPE_3__*) ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct via686a_data*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 TYPE_2__ via686a_driver ;
 int via686a_group ;
 int via686a_init_device (struct via686a_data*) ;

__attribute__((used)) static int via686a_probe(struct platform_device *pdev)
{
 struct via686a_data *data;
 struct resource *res;
 int err;


 res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!devm_request_region(&pdev->dev, res->start, VIA686A_EXTENT,
     via686a_driver.driver.name)) {
  dev_err(&pdev->dev, "Region 0x%lx-0x%lx already in use!\n",
   (unsigned long)res->start, (unsigned long)res->end);
  return -ENODEV;
 }

 data = devm_kzalloc(&pdev->dev, sizeof(struct via686a_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 platform_set_drvdata(pdev, data);
 data->addr = res->start;
 data->name = "via686a";
 mutex_init(&data->update_lock);


 via686a_init_device(data);


 err = sysfs_create_group(&pdev->dev.kobj, &via686a_group);
 if (err)
  return err;

 data->hwmon_dev = hwmon_device_register(&pdev->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_files;
 }

 return 0;

exit_remove_files:
 sysfs_remove_group(&pdev->dev.kobj, &via686a_group);
 return err;
}
