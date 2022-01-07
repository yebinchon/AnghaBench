
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct resource {int dummy; } ;
struct TYPE_20__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int id; int name; } ;
struct TYPE_19__ {struct device_node* of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int nr; int * bus_recovery_info; TYPE_1__ dev; int * quirks; int * algo; int name; int class; int owner; } ;
struct omap_i2c_dev {int flags; int speed; int irq; int reg_shift; int scheme; int rev; int fifo_size; int b_hw; int latency; TYPE_2__* dev; struct i2c_adapter adapter; int * set_mpu_wkup_lat; int errata; int * regs; scalar_t__ base; int cmd_complete; } ;
struct omap_i2c_bus_platform_data {int flags; int clkrate; int * set_mpu_wkup_lat; } ;
struct of_device_id {struct omap_i2c_bus_platform_data* data; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_DEPRECATED ;
 int I2C_OMAP_ERRATA_I207 ;
 int I2C_OMAP_ERRATA_I462 ;
 int IORESOURCE_MEM ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int OMAP_I2C_BUFSTAT_REG ;
 int OMAP_I2C_CON_REG ;
 int OMAP_I2C_FLAG_BUS_SHIFT__SHIFT ;
 int OMAP_I2C_FLAG_NO_FIFO ;
 int OMAP_I2C_IP_V2_REVNB_LO ;
 scalar_t__ OMAP_I2C_OMAP1_REV_2 ;
 int OMAP_I2C_PM_TIMEOUT ;
 scalar_t__ OMAP_I2C_REV_ON_2430 ;
 scalar_t__ OMAP_I2C_REV_ON_3430_3530 ;
 scalar_t__ OMAP_I2C_REV_ON_3630 ;
 scalar_t__ OMAP_I2C_REV_ON_4430_PLUS ;
 int OMAP_I2C_REV_REG ;
 int OMAP_I2C_REV_SCHEME_0_MAJOR (int) ;
 int OMAP_I2C_REV_SCHEME_1_MAJOR (int) ;
 int OMAP_I2C_REV_SCHEME_1_MINOR (int) ;
 int OMAP_I2C_SCHEME (int) ;


 int PTR_ERR (scalar_t__) ;
 int THIS_MODULE ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct omap_i2c_bus_platform_data* dev_get_platdata (TYPE_2__*) ;
 int dev_info (TYPE_2__*,char*,int ,int,int,int) ;
 scalar_t__ devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct omap_i2c_dev* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int,int ,struct omap_i2c_dev*) ;
 int devm_request_threaded_irq (TYPE_2__*,int,int ,int ,int,int ,struct omap_i2c_dev*) ;
 int i2c_add_numbered_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct omap_i2c_dev*) ;
 int init_completion (int *) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 int of_match_ptr (int ) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int omap_i2c_algo ;
 int omap_i2c_bus_recovery_info ;
 int omap_i2c_init (struct omap_i2c_dev*) ;
 int omap_i2c_isr ;
 int omap_i2c_isr_thread ;
 int omap_i2c_of_match ;
 int omap_i2c_omap1_isr ;
 int omap_i2c_quirks ;
 int omap_i2c_read_reg (struct omap_i2c_dev*,int ) ;
 int omap_i2c_write_reg (struct omap_i2c_dev*,int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct omap_i2c_dev*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_dont_use_autosuspend (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_get_sync (TYPE_2__*) ;
 int pm_runtime_mark_last_busy (TYPE_2__*) ;
 int pm_runtime_put_autosuspend (TYPE_2__*) ;
 int pm_runtime_put_sync (TYPE_2__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_2__*,int ) ;
 int pm_runtime_use_autosuspend (TYPE_2__*) ;
 int readw_relaxed (scalar_t__) ;
 scalar_t__ reg_map_ip_v1 ;
 scalar_t__ reg_map_ip_v2 ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int
omap_i2c_probe(struct platform_device *pdev)
{
 struct omap_i2c_dev *omap;
 struct i2c_adapter *adap;
 struct resource *mem;
 const struct omap_i2c_bus_platform_data *pdata =
  dev_get_platdata(&pdev->dev);
 struct device_node *node = pdev->dev.of_node;
 const struct of_device_id *match;
 int irq;
 int r;
 u32 rev;
 u16 minor, major;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(&pdev->dev, "no irq resource?\n");
  return irq;
 }

 omap = devm_kzalloc(&pdev->dev, sizeof(struct omap_i2c_dev), GFP_KERNEL);
 if (!omap)
  return -ENOMEM;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 omap->base = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(omap->base))
  return PTR_ERR(omap->base);

 match = of_match_device(of_match_ptr(omap_i2c_of_match), &pdev->dev);
 if (match) {
  u32 freq = 100000;

  pdata = match->data;
  omap->flags = pdata->flags;

  of_property_read_u32(node, "clock-frequency", &freq);

  omap->speed = freq / 1000;
 } else if (pdata != ((void*)0)) {
  omap->speed = pdata->clkrate;
  omap->flags = pdata->flags;
  omap->set_mpu_wkup_lat = pdata->set_mpu_wkup_lat;
 }

 omap->dev = &pdev->dev;
 omap->irq = irq;

 platform_set_drvdata(pdev, omap);
 init_completion(&omap->cmd_complete);

 omap->reg_shift = (omap->flags >> OMAP_I2C_FLAG_BUS_SHIFT__SHIFT) & 3;

 pm_runtime_enable(omap->dev);
 pm_runtime_set_autosuspend_delay(omap->dev, OMAP_I2C_PM_TIMEOUT);
 pm_runtime_use_autosuspend(omap->dev);

 r = pm_runtime_get_sync(omap->dev);
 if (r < 0)
  goto err_free_mem;







 rev = readw_relaxed(omap->base + 0x04);

 omap->scheme = OMAP_I2C_SCHEME(rev);
 switch (omap->scheme) {
 case 129:
  omap->regs = (u8 *)reg_map_ip_v1;
  omap->rev = omap_i2c_read_reg(omap, OMAP_I2C_REV_REG);
  minor = OMAP_I2C_REV_SCHEME_0_MAJOR(omap->rev);
  major = OMAP_I2C_REV_SCHEME_0_MAJOR(omap->rev);
  break;
 case 128:

 default:
  omap->regs = (u8 *)reg_map_ip_v2;
  rev = (rev << 16) |
   omap_i2c_read_reg(omap, OMAP_I2C_IP_V2_REVNB_LO);
  minor = OMAP_I2C_REV_SCHEME_1_MINOR(rev);
  major = OMAP_I2C_REV_SCHEME_1_MAJOR(rev);
  omap->rev = rev;
 }

 omap->errata = 0;

 if (omap->rev >= OMAP_I2C_REV_ON_2430 &&
   omap->rev < OMAP_I2C_REV_ON_4430_PLUS)
  omap->errata |= I2C_OMAP_ERRATA_I207;

 if (omap->rev <= OMAP_I2C_REV_ON_3430_3530)
  omap->errata |= I2C_OMAP_ERRATA_I462;

 if (!(omap->flags & OMAP_I2C_FLAG_NO_FIFO)) {
  u16 s;


  s = (omap_i2c_read_reg(omap, OMAP_I2C_BUFSTAT_REG) >> 14) & 0x3;
  omap->fifo_size = 0x8 << s;







  omap->fifo_size = (omap->fifo_size / 2);

  if (omap->rev < OMAP_I2C_REV_ON_3630)
   omap->b_hw = 1;


  if (omap->set_mpu_wkup_lat != ((void*)0))
   omap->latency = (1000000 * omap->fifo_size) /
           (1000 * omap->speed / 8);
 }


 omap_i2c_init(omap);

 if (omap->rev < OMAP_I2C_OMAP1_REV_2)
  r = devm_request_irq(&pdev->dev, omap->irq, omap_i2c_omap1_isr,
    IRQF_NO_SUSPEND, pdev->name, omap);
 else
  r = devm_request_threaded_irq(&pdev->dev, omap->irq,
    omap_i2c_isr, omap_i2c_isr_thread,
    IRQF_NO_SUSPEND | IRQF_ONESHOT,
    pdev->name, omap);

 if (r) {
  dev_err(omap->dev, "failure requesting irq %i\n", omap->irq);
  goto err_unuse_clocks;
 }

 adap = &omap->adapter;
 i2c_set_adapdata(adap, omap);
 adap->owner = THIS_MODULE;
 adap->class = I2C_CLASS_DEPRECATED;
 strlcpy(adap->name, "OMAP I2C adapter", sizeof(adap->name));
 adap->algo = &omap_i2c_algo;
 adap->quirks = &omap_i2c_quirks;
 adap->dev.parent = &pdev->dev;
 adap->dev.of_node = pdev->dev.of_node;
 adap->bus_recovery_info = &omap_i2c_bus_recovery_info;


 adap->nr = pdev->id;
 r = i2c_add_numbered_adapter(adap);
 if (r)
  goto err_unuse_clocks;

 dev_info(omap->dev, "bus %d rev%d.%d at %d kHz\n", adap->nr,
   major, minor, omap->speed);

 pm_runtime_mark_last_busy(omap->dev);
 pm_runtime_put_autosuspend(omap->dev);

 return 0;

err_unuse_clocks:
 omap_i2c_write_reg(omap, OMAP_I2C_CON_REG, 0);
 pm_runtime_dont_use_autosuspend(omap->dev);
 pm_runtime_put_sync(omap->dev);
 pm_runtime_disable(&pdev->dev);
err_free_mem:

 return r;
}
