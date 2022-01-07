
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smsc47b397_data {int update_lock; int lock; scalar_t__ addr; } ;
struct resource {scalar_t__ start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 scalar_t__ SMSC_EXTENT ;
 int dev_err (struct device*,char*,unsigned long,scalar_t__) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,char*,struct smsc47b397_data*,int ) ;
 struct smsc47b397_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_region (struct device*,scalar_t__,scalar_t__,int ) ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 TYPE_2__ smsc47b397_driver ;
 int smsc47b397_groups ;

__attribute__((used)) static int smsc47b397_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct smsc47b397_data *data;
 struct device *hwmon_dev;
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!devm_request_region(dev, res->start, SMSC_EXTENT,
     smsc47b397_driver.driver.name)) {
  dev_err(dev, "Region 0x%lx-0x%lx already in use!\n",
   (unsigned long)res->start,
   (unsigned long)res->start + SMSC_EXTENT - 1);
  return -EBUSY;
 }

 data = devm_kzalloc(dev, sizeof(struct smsc47b397_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->addr = res->start;
 mutex_init(&data->lock);
 mutex_init(&data->update_lock);

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, "smsc47b397",
          data,
          smsc47b397_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
