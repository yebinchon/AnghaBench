
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; int id; int name; } ;
struct TYPE_2__ {int * parent; } ;
struct i2c_adapter {int nr; TYPE_1__ dev; int * algo; int name; int class; int owner; } ;
struct highlander_i2c_dev {int base; scalar_t__ irq; struct i2c_adapter adapter; int last_read_time; int * dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int IORESOURCE_MEM ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 int dev_notice (int *,char*) ;
 int free_irq (scalar_t__,struct highlander_i2c_dev*) ;
 int highlander_i2c_algo ;
 int highlander_i2c_irq ;
 int highlander_i2c_irq_disable (struct highlander_i2c_dev*) ;
 int highlander_i2c_irq_enable (struct highlander_i2c_dev*) ;
 int highlander_i2c_reset (struct highlander_i2c_dev*) ;
 int highlander_i2c_setup (struct highlander_i2c_dev*) ;
 int i2c_add_numbered_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct highlander_i2c_dev*) ;
 scalar_t__ iic_force_poll ;
 int ioremap_nocache (int ,int ) ;
 int iounmap (int ) ;
 int jiffies ;
 int kfree (struct highlander_i2c_dev*) ;
 struct highlander_i2c_dev* kzalloc (int,int ) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct highlander_i2c_dev*) ;
 int request_irq (scalar_t__,int ,int ,int ,struct highlander_i2c_dev*) ;
 int resource_size (struct resource*) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int highlander_i2c_probe(struct platform_device *pdev)
{
 struct highlander_i2c_dev *dev;
 struct i2c_adapter *adap;
 struct resource *res;
 int ret;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (unlikely(!res)) {
  dev_err(&pdev->dev, "no mem resource\n");
  return -ENODEV;
 }

 dev = kzalloc(sizeof(struct highlander_i2c_dev), GFP_KERNEL);
 if (unlikely(!dev))
  return -ENOMEM;

 dev->base = ioremap_nocache(res->start, resource_size(res));
 if (unlikely(!dev->base)) {
  ret = -ENXIO;
  goto err;
 }

 dev->dev = &pdev->dev;
 platform_set_drvdata(pdev, dev);

 dev->irq = platform_get_irq(pdev, 0);
 if (iic_force_poll)
  dev->irq = 0;

 if (dev->irq) {
  ret = request_irq(dev->irq, highlander_i2c_irq, 0,
      pdev->name, dev);
  if (unlikely(ret))
   goto err_unmap;

  highlander_i2c_irq_enable(dev);
 } else {
  dev_notice(&pdev->dev, "no IRQ, using polling mode\n");
  highlander_i2c_irq_disable(dev);
 }

 dev->last_read_time = jiffies;

 highlander_i2c_setup(dev);

 adap = &dev->adapter;
 i2c_set_adapdata(adap, dev);
 adap->owner = THIS_MODULE;
 adap->class = I2C_CLASS_HWMON;
 strlcpy(adap->name, "HL FPGA I2C adapter", sizeof(adap->name));
 adap->algo = &highlander_i2c_algo;
 adap->dev.parent = &pdev->dev;
 adap->nr = pdev->id;




 ret = highlander_i2c_reset(dev);
 if (unlikely(ret)) {
  dev_err(&pdev->dev, "controller didn't come up\n");
  goto err_free_irq;
 }

 ret = i2c_add_numbered_adapter(adap);
 if (unlikely(ret)) {
  dev_err(&pdev->dev, "failure adding adapter\n");
  goto err_free_irq;
 }

 return 0;

err_free_irq:
 if (dev->irq)
  free_irq(dev->irq, dev);
err_unmap:
 iounmap(dev->base);
err:
 kfree(dev);

 return ret;
}
