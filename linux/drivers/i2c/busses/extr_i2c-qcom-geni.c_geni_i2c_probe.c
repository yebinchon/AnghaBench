
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_23__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int u32 ;
struct resource {int dummy; } ;
struct TYPE_25__ {int of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_28__ {TYPE_1__* dev; int clk; int base; int wrapper; } ;
struct TYPE_26__ {int of_node; TYPE_1__* parent; } ;
struct TYPE_27__ {int name; TYPE_23__ dev; int * algo; } ;
struct geni_i2c_dev {int irq; int tx_wm; int suspended; TYPE_9__ se; TYPE_6__ adap; int lock; int done; int clk_freq_out; } ;


 int ACPI_COMPANION (TYPE_1__*) ;
 int ACPI_COMPANION_SET (TYPE_23__*,int ) ;
 int BITS_PER_BYTE ;
 int ENOMEM ;
 int ENXIO ;
 int GENI_SE_I2C ;
 int GFP_KERNEL ;
 int I2C_AUTO_SUSPEND_DELAY ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int KHZ (int) ;
 int PACKING_BYTES_PW ;
 int PTR_ERR (int ) ;
 int dev_dbg (TYPE_1__*,char*,...) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_get_drvdata (int ) ;
 int dev_info (TYPE_1__*,char*) ;
 int device_property_read_u32 (TYPE_1__*,char*,int *) ;
 int devm_clk_get (TYPE_1__*,char*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct geni_i2c_dev* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_irq (TYPE_1__*,int,int ,int ,char*,struct geni_i2c_dev*) ;
 int disable_irq (int) ;
 int geni_i2c_algo ;
 int geni_i2c_clk_map_idx (struct geni_i2c_dev*) ;
 int geni_i2c_irq ;
 int geni_se_config_packing (TYPE_9__*,int ,int ,int,int,int) ;
 int geni_se_get_tx_fifo_depth (TYPE_9__*) ;
 int geni_se_init (TYPE_9__*,int,int) ;
 int geni_se_read_proto (TYPE_9__*) ;
 int geni_se_resources_off (TYPE_9__*) ;
 int geni_se_resources_on (TYPE_9__*) ;
 scalar_t__ has_acpi_companion (TYPE_1__*) ;
 int i2c_add_adapter (TYPE_6__*) ;
 int i2c_set_adapdata (TYPE_6__*,struct geni_i2c_dev*) ;
 int init_completion (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct geni_i2c_dev*) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_1__*,int ) ;
 int pm_runtime_set_suspended (TYPE_1__*) ;
 int pm_runtime_use_autosuspend (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int geni_i2c_probe(struct platform_device *pdev)
{
 struct geni_i2c_dev *gi2c;
 struct resource *res;
 u32 proto, tx_depth;
 int ret;

 gi2c = devm_kzalloc(&pdev->dev, sizeof(*gi2c), GFP_KERNEL);
 if (!gi2c)
  return -ENOMEM;

 gi2c->se.dev = &pdev->dev;
 gi2c->se.wrapper = dev_get_drvdata(pdev->dev.parent);
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 gi2c->se.base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(gi2c->se.base))
  return PTR_ERR(gi2c->se.base);

 gi2c->se.clk = devm_clk_get(&pdev->dev, "se");
 if (IS_ERR(gi2c->se.clk) && !has_acpi_companion(&pdev->dev)) {
  ret = PTR_ERR(gi2c->se.clk);
  dev_err(&pdev->dev, "Err getting SE Core clk %d\n", ret);
  return ret;
 }

 ret = device_property_read_u32(&pdev->dev, "clock-frequency",
       &gi2c->clk_freq_out);
 if (ret) {
  dev_info(&pdev->dev,
   "Bus frequency not specified, default to 100kHz.\n");
  gi2c->clk_freq_out = KHZ(100);
 }

 if (has_acpi_companion(&pdev->dev))
  ACPI_COMPANION_SET(&gi2c->adap.dev, ACPI_COMPANION(&pdev->dev));

 gi2c->irq = platform_get_irq(pdev, 0);
 if (gi2c->irq < 0) {
  dev_err(&pdev->dev, "IRQ error for i2c-geni\n");
  return gi2c->irq;
 }

 ret = geni_i2c_clk_map_idx(gi2c);
 if (ret) {
  dev_err(&pdev->dev, "Invalid clk frequency %d Hz: %d\n",
   gi2c->clk_freq_out, ret);
  return ret;
 }

 gi2c->adap.algo = &geni_i2c_algo;
 init_completion(&gi2c->done);
 spin_lock_init(&gi2c->lock);
 platform_set_drvdata(pdev, gi2c);
 ret = devm_request_irq(&pdev->dev, gi2c->irq, geni_i2c_irq,
          IRQF_TRIGGER_HIGH, "i2c_geni", gi2c);
 if (ret) {
  dev_err(&pdev->dev, "Request_irq failed:%d: err:%d\n",
   gi2c->irq, ret);
  return ret;
 }

 disable_irq(gi2c->irq);
 i2c_set_adapdata(&gi2c->adap, gi2c);
 gi2c->adap.dev.parent = &pdev->dev;
 gi2c->adap.dev.of_node = pdev->dev.of_node;
 strlcpy(gi2c->adap.name, "Geni-I2C", sizeof(gi2c->adap.name));

 ret = geni_se_resources_on(&gi2c->se);
 if (ret) {
  dev_err(&pdev->dev, "Error turning on resources %d\n", ret);
  return ret;
 }
 proto = geni_se_read_proto(&gi2c->se);
 tx_depth = geni_se_get_tx_fifo_depth(&gi2c->se);
 if (proto != GENI_SE_I2C) {
  dev_err(&pdev->dev, "Invalid proto %d\n", proto);
  geni_se_resources_off(&gi2c->se);
  return -ENXIO;
 }
 gi2c->tx_wm = tx_depth - 1;
 geni_se_init(&gi2c->se, gi2c->tx_wm, tx_depth);
 geni_se_config_packing(&gi2c->se, BITS_PER_BYTE, PACKING_BYTES_PW,
       1, 1, 1);
 ret = geni_se_resources_off(&gi2c->se);
 if (ret) {
  dev_err(&pdev->dev, "Error turning off resources %d\n", ret);
  return ret;
 }

 dev_dbg(&pdev->dev, "i2c fifo/se-dma mode. fifo depth:%d\n", tx_depth);

 gi2c->suspended = 1;
 pm_runtime_set_suspended(gi2c->se.dev);
 pm_runtime_set_autosuspend_delay(gi2c->se.dev, I2C_AUTO_SUSPEND_DELAY);
 pm_runtime_use_autosuspend(gi2c->se.dev);
 pm_runtime_enable(gi2c->se.dev);

 ret = i2c_add_adapter(&gi2c->adap);
 if (ret) {
  dev_err(&pdev->dev, "Error adding i2c adapter %d\n", ret);
  pm_runtime_disable(gi2c->se.dev);
  return ret;
 }

 dev_dbg(&pdev->dev, "Geni-I2C adaptor successfully added\n");

 return 0;
}
