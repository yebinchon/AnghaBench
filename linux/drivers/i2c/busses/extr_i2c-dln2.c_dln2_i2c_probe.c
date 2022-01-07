
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int parent; int of_node; } ;
struct platform_device {struct device dev; } ;
struct dln2_platform_data {int port; } ;
struct TYPE_5__ {int of_node; struct device* parent; } ;
struct TYPE_4__ {int name; TYPE_3__ dev; int * quirks; int * algo; int class; int owner; } ;
struct dln2_i2c {int port; TYPE_1__ adapter; struct platform_device* pdev; int buf; } ;


 int ACPI_COMPANION (struct device*) ;
 int ACPI_COMPANION_SET (TYPE_3__*,int ) ;
 int DLN2_I2C_BUF_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*,int) ;
 struct dln2_platform_data* dev_get_platdata (struct device*) ;
 char* dev_name (int ) ;
 int devm_kmalloc (struct device*,int ,int ) ;
 struct dln2_i2c* devm_kzalloc (struct device*,int,int ) ;
 int dln2_i2c_enable (struct dln2_i2c*,int) ;
 int dln2_i2c_quirks ;
 int dln2_i2c_usb_algorithm ;
 int i2c_add_adapter (TYPE_1__*) ;
 int i2c_set_adapdata (TYPE_1__*,struct dln2_i2c*) ;
 int platform_set_drvdata (struct platform_device*,struct dln2_i2c*) ;
 int snprintf (int ,int,char*,char*,char*,int) ;

__attribute__((used)) static int dln2_i2c_probe(struct platform_device *pdev)
{
 int ret;
 struct dln2_i2c *dln2;
 struct device *dev = &pdev->dev;
 struct dln2_platform_data *pdata = dev_get_platdata(&pdev->dev);

 dln2 = devm_kzalloc(dev, sizeof(*dln2), GFP_KERNEL);
 if (!dln2)
  return -ENOMEM;

 dln2->buf = devm_kmalloc(dev, DLN2_I2C_BUF_SIZE, GFP_KERNEL);
 if (!dln2->buf)
  return -ENOMEM;

 dln2->pdev = pdev;
 dln2->port = pdata->port;


 dln2->adapter.owner = THIS_MODULE;
 dln2->adapter.class = I2C_CLASS_HWMON;
 dln2->adapter.algo = &dln2_i2c_usb_algorithm;
 dln2->adapter.quirks = &dln2_i2c_quirks;
 dln2->adapter.dev.parent = dev;
 ACPI_COMPANION_SET(&dln2->adapter.dev, ACPI_COMPANION(&pdev->dev));
 dln2->adapter.dev.of_node = dev->of_node;
 i2c_set_adapdata(&dln2->adapter, dln2);
 snprintf(dln2->adapter.name, sizeof(dln2->adapter.name), "%s-%s-%d",
   "dln2-i2c", dev_name(pdev->dev.parent), dln2->port);

 platform_set_drvdata(pdev, dln2);


 ret = dln2_i2c_enable(dln2, 1);
 if (ret < 0) {
  dev_err(dev, "failed to initialize adapter: %d\n", ret);
  return ret;
 }


 ret = i2c_add_adapter(&dln2->adapter);
 if (ret < 0)
  goto out_disable;

 return 0;

out_disable:
 dln2_i2c_enable(dln2, 0);

 return ret;
}
