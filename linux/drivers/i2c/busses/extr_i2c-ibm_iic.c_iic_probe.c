
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int class; int timeout; int * algo; int name; TYPE_1__ dev; } ;
struct ibm_iic_private {int fast_mode; int * vaddr; scalar_t__ irq; struct i2c_adapter adap; int clckdiv; int wq; } ;
struct device_node {struct device_node* parent; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int HZ ;
 int I2C_CLASS_HWMON ;
 int I2C_CLASS_SPD ;
 int dev_dbg (TYPE_2__*,char*,int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*,char*) ;
 int dev_warn (TYPE_2__*,char*) ;
 int free_irq (scalar_t__,struct ibm_iic_private*) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct ibm_iic_private*) ;
 int iic_algo ;
 int iic_clckdiv (int const) ;
 int iic_dev_init (struct ibm_iic_private*) ;
 scalar_t__ iic_force_fast ;
 int iic_interrupt_mode (struct ibm_iic_private*,int ) ;
 scalar_t__ iic_request_irq (struct platform_device*,struct ibm_iic_private*) ;
 int init_waitqueue_head (int *) ;
 int iounmap (int *) ;
 int kfree (struct ibm_iic_private*) ;
 struct ibm_iic_private* kzalloc (int,int ) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int * of_iomap (struct device_node*,int ) ;
 int of_node_get (struct device_node*) ;
 int platform_set_drvdata (struct platform_device*,struct ibm_iic_private*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int iic_probe(struct platform_device *ofdev)
{
 struct device_node *np = ofdev->dev.of_node;
 struct ibm_iic_private *dev;
 struct i2c_adapter *adap;
 const u32 *freq;
 int ret;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev) {
  dev_err(&ofdev->dev, "failed to allocate device data\n");
  return -ENOMEM;
 }

 platform_set_drvdata(ofdev, dev);

 dev->vaddr = of_iomap(np, 0);
 if (dev->vaddr == ((void*)0)) {
  dev_err(&ofdev->dev, "failed to iomap device\n");
  ret = -ENXIO;
  goto error_cleanup;
 }

 init_waitqueue_head(&dev->wq);

 dev->irq = iic_request_irq(ofdev, dev);
 if (!dev->irq)
  dev_warn(&ofdev->dev, "using polling mode\n");


 if (iic_force_fast || of_get_property(np, "fast-mode", ((void*)0)))
  dev->fast_mode = 1;

 freq = of_get_property(np, "clock-frequency", ((void*)0));
 if (freq == ((void*)0)) {
  freq = of_get_property(np->parent, "clock-frequency", ((void*)0));
  if (freq == ((void*)0)) {
   dev_err(&ofdev->dev, "Unable to get bus frequency\n");
   ret = -EINVAL;
   goto error_cleanup;
  }
 }

 dev->clckdiv = iic_clckdiv(*freq);
 dev_dbg(&ofdev->dev, "clckdiv = %d\n", dev->clckdiv);


 iic_dev_init(dev);


 adap = &dev->adap;
 adap->dev.parent = &ofdev->dev;
 adap->dev.of_node = of_node_get(np);
 strlcpy(adap->name, "IBM IIC", sizeof(adap->name));
 i2c_set_adapdata(adap, dev);
 adap->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
 adap->algo = &iic_algo;
 adap->timeout = HZ;

 ret = i2c_add_adapter(adap);
 if (ret < 0)
  goto error_cleanup;

 dev_info(&ofdev->dev, "using %s mode\n",
   dev->fast_mode ? "fast (400 kHz)" : "standard (100 kHz)");

 return 0;

error_cleanup:
 if (dev->irq) {
  iic_interrupt_mode(dev, 0);
  free_irq(dev->irq, dev);
 }

 if (dev->vaddr)
  iounmap(dev->vaddr);

 kfree(dev);
 return ret;
}
