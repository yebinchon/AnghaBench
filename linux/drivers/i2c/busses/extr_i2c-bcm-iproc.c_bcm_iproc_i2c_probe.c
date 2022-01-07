
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_10__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; int name; } ;
struct TYPE_9__ {int of_node; TYPE_2__* parent; } ;
struct i2c_adapter {TYPE_1__ dev; int * quirks; TYPE_8__* algo; int name; } ;
struct bcm_iproc_i2c_dev {int type; int irq; TYPE_2__* device; struct i2c_adapter adapter; int idm_lock; int ape_addr_mask; void* idm_base; void* base; int done; } ;
typedef enum bcm_iproc_i2c_type { ____Placeholder_bcm_iproc_i2c_type } bcm_iproc_i2c_type ;
struct TYPE_11__ {int * unreg_slave; int * reg_slave; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IPROC_I2C_NIC ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 TYPE_8__ bcm_iproc_algo ;
 int bcm_iproc_i2c_cfg_speed (struct bcm_iproc_i2c_dev*) ;
 int bcm_iproc_i2c_enable_disable (struct bcm_iproc_i2c_dev*,int) ;
 int bcm_iproc_i2c_init (struct bcm_iproc_i2c_dev*) ;
 int bcm_iproc_i2c_isr ;
 int bcm_iproc_i2c_quirks ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_warn (TYPE_2__*,char*) ;
 void* devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct bcm_iproc_i2c_dev* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,int ,struct bcm_iproc_i2c_dev*) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct bcm_iproc_i2c_dev*) ;
 int init_completion (int *) ;
 scalar_t__ of_device_get_match_data (TYPE_2__*) ;
 char* of_node_full_name (int ) ;
 int of_property_read_u32 (int ,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct bcm_iproc_i2c_dev*) ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int bcm_iproc_i2c_probe(struct platform_device *pdev)
{
 int irq, ret = 0;
 struct bcm_iproc_i2c_dev *iproc_i2c;
 struct i2c_adapter *adap;
 struct resource *res;

 iproc_i2c = devm_kzalloc(&pdev->dev, sizeof(*iproc_i2c),
     GFP_KERNEL);
 if (!iproc_i2c)
  return -ENOMEM;

 platform_set_drvdata(pdev, iproc_i2c);
 iproc_i2c->device = &pdev->dev;
 iproc_i2c->type =
  (enum bcm_iproc_i2c_type)of_device_get_match_data(&pdev->dev);
 init_completion(&iproc_i2c->done);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 iproc_i2c->base = devm_ioremap_resource(iproc_i2c->device, res);
 if (IS_ERR(iproc_i2c->base))
  return PTR_ERR(iproc_i2c->base);

 if (iproc_i2c->type == IPROC_I2C_NIC) {
  res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
  iproc_i2c->idm_base = devm_ioremap_resource(iproc_i2c->device,
           res);
  if (IS_ERR(iproc_i2c->idm_base))
   return PTR_ERR(iproc_i2c->idm_base);

  ret = of_property_read_u32(iproc_i2c->device->of_node,
        "brcm,ape-hsls-addr-mask",
        &iproc_i2c->ape_addr_mask);
  if (ret < 0) {
   dev_err(iproc_i2c->device,
    "'brcm,ape-hsls-addr-mask' missing\n");
   return -EINVAL;
  }

  spin_lock_init(&iproc_i2c->idm_lock);


  bcm_iproc_algo.reg_slave = ((void*)0);
  bcm_iproc_algo.unreg_slave = ((void*)0);
 }

 ret = bcm_iproc_i2c_init(iproc_i2c);
 if (ret)
  return ret;

 ret = bcm_iproc_i2c_cfg_speed(iproc_i2c);
 if (ret)
  return ret;

 irq = platform_get_irq(pdev, 0);
 if (irq > 0) {
  ret = devm_request_irq(iproc_i2c->device, irq,
           bcm_iproc_i2c_isr, 0, pdev->name,
           iproc_i2c);
  if (ret < 0) {
   dev_err(iproc_i2c->device,
    "unable to request irq %i\n", irq);
   return ret;
  }

  iproc_i2c->irq = irq;
 } else {
  dev_warn(iproc_i2c->device,
    "no irq resource, falling back to poll mode\n");
 }

 bcm_iproc_i2c_enable_disable(iproc_i2c, 1);

 adap = &iproc_i2c->adapter;
 i2c_set_adapdata(adap, iproc_i2c);
 snprintf(adap->name, sizeof(adap->name),
  "Broadcom iProc (%s)",
  of_node_full_name(iproc_i2c->device->of_node));
 adap->algo = &bcm_iproc_algo;
 adap->quirks = &bcm_iproc_i2c_quirks;
 adap->dev.parent = &pdev->dev;
 adap->dev.of_node = pdev->dev.of_node;

 return i2c_add_adapter(adap);
}
