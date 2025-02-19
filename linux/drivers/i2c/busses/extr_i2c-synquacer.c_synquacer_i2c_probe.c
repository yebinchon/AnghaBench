
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_17__ {int of_node; struct TYPE_17__* parent; } ;
struct TYPE_16__ {TYPE_4__ dev; int nr; } ;
struct synquacer_i2c {int pclkrate; TYPE_1__ adapter; int speed_khz; int completion; TYPE_4__* dev; int state; int irq; int base; int pclk; } ;
struct resource {int dummy; } ;
struct platform_device {TYPE_4__ dev; int id; } ;


 int ACPI_COMPANION (TYPE_4__*) ;
 int ACPI_COMPANION_SET (TYPE_4__*,int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int IS_ERR_OR_NULL (int ) ;
 int PTR_ERR (int ) ;
 int STATE_IDLE ;
 int SYNQUACER_I2C_MAX_CLK_RATE ;
 int SYNQUACER_I2C_MIN_CLK_RATE ;
 int SYNQUACER_I2C_SPEED_FM ;
 int SYNQUACER_I2C_SPEED_SM ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (TYPE_4__*,char*,int ) ;
 int dev_err (TYPE_4__*,char*,...) ;
 int dev_info (TYPE_4__*,char*,int ) ;
 int dev_name (TYPE_4__*) ;
 int device_property_read_u32 (TYPE_4__*,char*,int*) ;
 int devm_clk_get (TYPE_4__*,char*) ;
 int devm_ioremap_resource (TYPE_4__*,struct resource*) ;
 struct synquacer_i2c* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_request_irq (TYPE_4__*,int ,int ,int ,int ,struct synquacer_i2c*) ;
 int i2c_acpi_find_bus_speed (TYPE_4__*) ;
 int i2c_add_numbered_adapter (TYPE_1__*) ;
 int i2c_set_adapdata (TYPE_1__*,struct synquacer_i2c*) ;
 int init_completion (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct synquacer_i2c*) ;
 int synquacer_i2c_hw_init (struct synquacer_i2c*) ;
 int synquacer_i2c_isr ;
 TYPE_1__ synquacer_i2c_ops ;

__attribute__((used)) static int synquacer_i2c_probe(struct platform_device *pdev)
{
 struct synquacer_i2c *i2c;
 struct resource *r;
 u32 bus_speed;
 int ret;

 i2c = devm_kzalloc(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
 if (!i2c)
  return -ENOMEM;

 bus_speed = i2c_acpi_find_bus_speed(&pdev->dev);
 if (!bus_speed)
  device_property_read_u32(&pdev->dev, "clock-frequency",
      &bus_speed);

 device_property_read_u32(&pdev->dev, "socionext,pclk-rate",
     &i2c->pclkrate);

 i2c->pclk = devm_clk_get(&pdev->dev, "pclk");
 if (IS_ERR(i2c->pclk) && PTR_ERR(i2c->pclk) == -EPROBE_DEFER)
  return -EPROBE_DEFER;
 if (!IS_ERR_OR_NULL(i2c->pclk)) {
  dev_dbg(&pdev->dev, "clock source %p\n", i2c->pclk);

  ret = clk_prepare_enable(i2c->pclk);
  if (ret) {
   dev_err(&pdev->dev, "failed to enable clock (%d)\n",
    ret);
   return ret;
  }
  i2c->pclkrate = clk_get_rate(i2c->pclk);
 }

 if (i2c->pclkrate < SYNQUACER_I2C_MIN_CLK_RATE ||
     i2c->pclkrate > SYNQUACER_I2C_MAX_CLK_RATE) {
  dev_err(&pdev->dev, "PCLK missing or out of range (%d)\n",
   i2c->pclkrate);
  return -EINVAL;
 }

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 i2c->base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(i2c->base))
  return PTR_ERR(i2c->base);

 i2c->irq = platform_get_irq(pdev, 0);
 if (i2c->irq < 0) {
  dev_err(&pdev->dev, "no IRQ resource found\n");
  return -ENODEV;
 }

 ret = devm_request_irq(&pdev->dev, i2c->irq, synquacer_i2c_isr,
          0, dev_name(&pdev->dev), i2c);
 if (ret < 0) {
  dev_err(&pdev->dev, "cannot claim IRQ %d\n", i2c->irq);
  return ret;
 }

 i2c->state = STATE_IDLE;
 i2c->dev = &pdev->dev;
 i2c->adapter = synquacer_i2c_ops;
 i2c_set_adapdata(&i2c->adapter, i2c);
 i2c->adapter.dev.parent = &pdev->dev;
 i2c->adapter.dev.of_node = pdev->dev.of_node;
 ACPI_COMPANION_SET(&i2c->adapter.dev, ACPI_COMPANION(&pdev->dev));
 i2c->adapter.nr = pdev->id;
 init_completion(&i2c->completion);

 if (bus_speed < 400000)
  i2c->speed_khz = SYNQUACER_I2C_SPEED_SM;
 else
  i2c->speed_khz = SYNQUACER_I2C_SPEED_FM;

 synquacer_i2c_hw_init(i2c);

 ret = i2c_add_numbered_adapter(&i2c->adapter);
 if (ret) {
  dev_err(&pdev->dev, "failed to add bus to i2c core\n");
  return ret;
 }

 platform_set_drvdata(pdev, i2c);

 dev_info(&pdev->dev, "%s: synquacer_i2c adapter\n",
   dev_name(&i2c->adapter.dev));

 return 0;
}
