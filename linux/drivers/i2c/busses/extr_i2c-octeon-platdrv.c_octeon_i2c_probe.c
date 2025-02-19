
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_14__ {struct device_node* of_node; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_12__ {struct device_node* of_node; TYPE_6__* parent; } ;
struct TYPE_13__ {int retries; TYPE_2__ dev; int * bus_recovery_info; int timeout; } ;
struct TYPE_11__ {int sw_twsi; int twsi_int; int sw_twsi_ext; } ;
struct octeon_i2c {int irq; int hlc_irq; int broken_irq_check; TYPE_6__* dev; TYPE_3__ adap; void* hlc_int_disable; int hlc_int_enable; void* int_disable; int int_enable; int queue; int sys_freq; int twsi_freq; int twsi_base; TYPE_1__ roff; } ;
struct device_node {int dummy; } ;


 int DRV_NAME ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQ_NOAUTOEN ;
 scalar_t__ IS_ERR (int ) ;
 int OCTEON_CN38XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_6__*,char*) ;
 int dev_info (TYPE_6__*,char*) ;
 int devm_ioremap_resource (TYPE_6__*,struct resource*) ;
 struct octeon_i2c* devm_kzalloc (TYPE_6__*,int,int ) ;
 int devm_request_irq (TYPE_6__*,int,int ,int ,int ,struct octeon_i2c*) ;
 int i2c_add_adapter (TYPE_3__*) ;
 int i2c_set_adapdata (TYPE_3__*,struct octeon_i2c*) ;
 int init_waitqueue_head (int *) ;
 int irq_set_status_flags (int,int ) ;
 int msecs_to_jiffies (int) ;
 int octeon_get_io_clock_rate () ;
 void* octeon_i2c_hlc_int_disable78 ;
 int octeon_i2c_hlc_int_enable ;
 int octeon_i2c_hlc_int_enable78 ;
 int octeon_i2c_hlc_isr78 ;
 int octeon_i2c_init_lowlevel (struct octeon_i2c*) ;
 void* octeon_i2c_int_disable ;
 void* octeon_i2c_int_disable78 ;
 int octeon_i2c_int_enable ;
 int octeon_i2c_int_enable78 ;
 int octeon_i2c_isr ;
 TYPE_3__ octeon_i2c_ops ;
 int octeon_i2c_recovery_info ;
 int octeon_i2c_set_clock (struct octeon_i2c*) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 int platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct octeon_i2c*) ;

__attribute__((used)) static int octeon_i2c_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 int irq, result = 0, hlc_irq = 0;
 struct resource *res_mem;
 struct octeon_i2c *i2c;
 bool cn78xx_style;

 cn78xx_style = of_device_is_compatible(node, "cavium,octeon-7890-twsi");
 if (cn78xx_style) {
  hlc_irq = platform_get_irq(pdev, 0);
  if (hlc_irq < 0)
   return hlc_irq;

  irq = platform_get_irq(pdev, 2);
  if (irq < 0)
   return irq;
 } else {

  irq = platform_get_irq(pdev, 0);
  if (irq < 0)
   return irq;
 }

 i2c = devm_kzalloc(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
 if (!i2c) {
  result = -ENOMEM;
  goto out;
 }
 i2c->dev = &pdev->dev;

 i2c->roff.sw_twsi = 0x00;
 i2c->roff.twsi_int = 0x10;
 i2c->roff.sw_twsi_ext = 0x18;

 res_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 i2c->twsi_base = devm_ioremap_resource(&pdev->dev, res_mem);
 if (IS_ERR(i2c->twsi_base)) {
  result = PTR_ERR(i2c->twsi_base);
  goto out;
 }






 if (of_property_read_u32(node, "clock-frequency", &i2c->twsi_freq) &&
     of_property_read_u32(node, "clock-rate", &i2c->twsi_freq)) {
  dev_err(i2c->dev,
   "no I2C 'clock-rate' or 'clock-frequency' property\n");
  result = -ENXIO;
  goto out;
 }

 i2c->sys_freq = octeon_get_io_clock_rate();

 init_waitqueue_head(&i2c->queue);

 i2c->irq = irq;

 if (cn78xx_style) {
  i2c->hlc_irq = hlc_irq;

  i2c->int_enable = octeon_i2c_int_enable78;
  i2c->int_disable = octeon_i2c_int_disable78;
  i2c->hlc_int_enable = octeon_i2c_hlc_int_enable78;
  i2c->hlc_int_disable = octeon_i2c_hlc_int_disable78;

  irq_set_status_flags(i2c->irq, IRQ_NOAUTOEN);
  irq_set_status_flags(i2c->hlc_irq, IRQ_NOAUTOEN);

  result = devm_request_irq(&pdev->dev, i2c->hlc_irq,
       octeon_i2c_hlc_isr78, 0,
       DRV_NAME, i2c);
  if (result < 0) {
   dev_err(i2c->dev, "failed to attach interrupt\n");
   goto out;
  }
 } else {
  i2c->int_enable = octeon_i2c_int_enable;
  i2c->int_disable = octeon_i2c_int_disable;
  i2c->hlc_int_enable = octeon_i2c_hlc_int_enable;
  i2c->hlc_int_disable = octeon_i2c_int_disable;
 }

 result = devm_request_irq(&pdev->dev, i2c->irq,
      octeon_i2c_isr, 0, DRV_NAME, i2c);
 if (result < 0) {
  dev_err(i2c->dev, "failed to attach interrupt\n");
  goto out;
 }

 if (OCTEON_IS_MODEL(OCTEON_CN38XX))
  i2c->broken_irq_check = 1;

 result = octeon_i2c_init_lowlevel(i2c);
 if (result) {
  dev_err(i2c->dev, "init low level failed\n");
  goto out;
 }

 octeon_i2c_set_clock(i2c);

 i2c->adap = octeon_i2c_ops;
 i2c->adap.timeout = msecs_to_jiffies(2);
 i2c->adap.retries = 5;
 i2c->adap.bus_recovery_info = &octeon_i2c_recovery_info;
 i2c->adap.dev.parent = &pdev->dev;
 i2c->adap.dev.of_node = node;
 i2c_set_adapdata(&i2c->adap, i2c);
 platform_set_drvdata(pdev, i2c);

 result = i2c_add_adapter(&i2c->adap);
 if (result < 0)
  goto out;
 dev_info(i2c->dev, "probed\n");
 return 0;

out:
 return result;
}
