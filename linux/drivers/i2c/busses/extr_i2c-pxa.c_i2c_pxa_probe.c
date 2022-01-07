
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_14__ {int of_node; TYPE_3__* parent; } ;
struct TYPE_12__ {int retries; TYPE_8__ dev; struct pxa_i2c* algo_data; int * algo; int name; int class; int owner; int nr; } ;
struct pxa_i2c {int irq; int highmode_enter; scalar_t__ clk; TYPE_2__ adap; int slave_addr; scalar_t__ use_pio; scalar_t__ rate; scalar_t__ high_mode; int slave; int iosize; int iobase; scalar_t__ reg_base; scalar_t__ reg_iwcr; scalar_t__ reg_ilcr; scalar_t__ reg_isar; int hs_mask; int fm_mask; scalar_t__ reg_isr; scalar_t__ reg_icr; scalar_t__ reg_idbr; scalar_t__ reg_ibmr; int wait; int lock; } ;
struct TYPE_13__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; int id; } ;
struct i2c_pxa_platform_data {int class; int slave; int slave_addr; } ;
typedef enum pxa_i2c_types { ____Placeholder_pxa_i2c_types } pxa_i2c_types ;
struct TYPE_11__ {scalar_t__ iwcr; scalar_t__ ilcr; scalar_t__ isar; scalar_t__ hs; scalar_t__ fm; scalar_t__ isr; scalar_t__ icr; scalar_t__ idbr; scalar_t__ ibmr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_PXA_SLAVE_ADDR ;
 int ICR_FM ;
 int ICR_HS ;
 int IORESOURCE_MEM ;
 int IRQF_NO_SUSPEND ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int REGS_CE4100 ;
 int REGS_PXA910 ;
 int THIS_MODULE ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_get_rate (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int clk_set_rate (scalar_t__,scalar_t__) ;
 int dev_err (TYPE_3__*,char*,int) ;
 struct i2c_pxa_platform_data* dev_get_platdata (TYPE_3__*) ;
 int dev_info (TYPE_8__*,char*,...) ;
 int dev_name (TYPE_3__*) ;
 scalar_t__ devm_clk_get (TYPE_3__*,int *) ;
 scalar_t__ devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 struct pxa_i2c* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_irq (TYPE_3__*,int,int ,int,int ,struct pxa_i2c*) ;
 int i2c_add_numbered_adapter (TYPE_2__*) ;
 int i2c_pxa_algorithm ;
 int i2c_pxa_handler ;
 int i2c_pxa_pio_algorithm ;
 int i2c_pxa_probe_dt (struct platform_device*,struct pxa_i2c*,int*) ;
 int i2c_pxa_probe_pdata (struct platform_device*,struct pxa_i2c*,int*) ;
 int i2c_pxa_reset (struct pxa_i2c*) ;
 int init_waitqueue_head (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pxa_i2c*) ;
 int pr_info (char*,int ,int ) ;
 int pr_warn (char*,int ) ;
 TYPE_1__* pxa_reg_layout ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int i2c_pxa_probe(struct platform_device *dev)
{
 struct i2c_pxa_platform_data *plat = dev_get_platdata(&dev->dev);
 enum pxa_i2c_types i2c_type;
 struct pxa_i2c *i2c;
 struct resource *res = ((void*)0);
 int ret, irq;

 i2c = devm_kzalloc(&dev->dev, sizeof(struct pxa_i2c), GFP_KERNEL);
 if (!i2c)
  return -ENOMEM;

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 i2c->reg_base = devm_ioremap_resource(&dev->dev, res);
 if (IS_ERR(i2c->reg_base))
  return PTR_ERR(i2c->reg_base);

 irq = platform_get_irq(dev, 0);
 if (irq < 0) {
  dev_err(&dev->dev, "no irq resource: %d\n", irq);
  return irq;
 }


 i2c->adap.nr = dev->id;

 ret = i2c_pxa_probe_dt(dev, i2c, &i2c_type);
 if (ret > 0)
  ret = i2c_pxa_probe_pdata(dev, i2c, &i2c_type);
 if (ret < 0)
  return ret;

 i2c->adap.owner = THIS_MODULE;
 i2c->adap.retries = 5;

 spin_lock_init(&i2c->lock);
 init_waitqueue_head(&i2c->wait);

 strlcpy(i2c->adap.name, "pxa_i2c-i2c", sizeof(i2c->adap.name));

 i2c->clk = devm_clk_get(&dev->dev, ((void*)0));
 if (IS_ERR(i2c->clk)) {
  dev_err(&dev->dev, "failed to get the clk: %ld\n", PTR_ERR(i2c->clk));
  return PTR_ERR(i2c->clk);
 }

 i2c->reg_ibmr = i2c->reg_base + pxa_reg_layout[i2c_type].ibmr;
 i2c->reg_idbr = i2c->reg_base + pxa_reg_layout[i2c_type].idbr;
 i2c->reg_icr = i2c->reg_base + pxa_reg_layout[i2c_type].icr;
 i2c->reg_isr = i2c->reg_base + pxa_reg_layout[i2c_type].isr;
 i2c->fm_mask = pxa_reg_layout[i2c_type].fm ? : ICR_FM;
 i2c->hs_mask = pxa_reg_layout[i2c_type].hs ? : ICR_HS;

 if (i2c_type != REGS_CE4100)
  i2c->reg_isar = i2c->reg_base + pxa_reg_layout[i2c_type].isar;

 if (i2c_type == REGS_PXA910) {
  i2c->reg_ilcr = i2c->reg_base + pxa_reg_layout[i2c_type].ilcr;
  i2c->reg_iwcr = i2c->reg_base + pxa_reg_layout[i2c_type].iwcr;
 }

 i2c->iobase = res->start;
 i2c->iosize = resource_size(res);

 i2c->irq = irq;

 i2c->slave_addr = I2C_PXA_SLAVE_ADDR;
 i2c->highmode_enter = 0;

 if (plat) {




  i2c->adap.class = plat->class;
 }

 if (i2c->high_mode) {
  if (i2c->rate) {
   clk_set_rate(i2c->clk, i2c->rate);
   pr_info("i2c: <%s> set rate to %ld\n",
    i2c->adap.name, clk_get_rate(i2c->clk));
  } else
   pr_warn("i2c: <%s> clock rate not set\n",
    i2c->adap.name);
 }

 clk_prepare_enable(i2c->clk);

 if (i2c->use_pio) {
  i2c->adap.algo = &i2c_pxa_pio_algorithm;
 } else {
  i2c->adap.algo = &i2c_pxa_algorithm;
  ret = devm_request_irq(&dev->dev, irq, i2c_pxa_handler,
    IRQF_SHARED | IRQF_NO_SUSPEND,
    dev_name(&dev->dev), i2c);
  if (ret) {
   dev_err(&dev->dev, "failed to request irq: %d\n", ret);
   goto ereqirq;
  }
 }

 i2c_pxa_reset(i2c);

 i2c->adap.algo_data = i2c;
 i2c->adap.dev.parent = &dev->dev;




 ret = i2c_add_numbered_adapter(&i2c->adap);
 if (ret < 0)
  goto ereqirq;

 platform_set_drvdata(dev, i2c);





 dev_info(&i2c->adap.dev, " PXA I2C adapter\n");

 return 0;

ereqirq:
 clk_disable_unprepare(i2c->clk);
 return ret;
}
