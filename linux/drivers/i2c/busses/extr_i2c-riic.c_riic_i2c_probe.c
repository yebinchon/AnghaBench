
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int of_node; TYPE_3__* parent; } ;
struct i2c_adapter {TYPE_1__ dev; int * algo; int owner; int name; } ;
struct riic_dev {int msg_done; struct i2c_adapter adapter; int clk; int base; } ;
struct resource {int start; } ;
struct TYPE_15__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct i2c_timings {int bus_freq_hz; } ;
struct TYPE_14__ {int name; int isr; int res_num; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (TYPE_3__*,char*,...) ;
 int dev_info (TYPE_3__*,char*,int ) ;
 int devm_clk_get (TYPE_3__*,int *) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 struct riic_dev* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_irq (TYPE_3__*,int ,int ,int ,int ,struct riic_dev*) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_parse_fw_timings (TYPE_3__*,struct i2c_timings*,int) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct riic_dev*) ;
 int init_completion (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct riic_dev*) ;
 int pm_runtime_disable (TYPE_3__*) ;
 int pm_runtime_enable (TYPE_3__*) ;
 int riic_algo ;
 int riic_init_hw (struct riic_dev*,struct i2c_timings*) ;
 TYPE_2__* riic_irqs ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int riic_i2c_probe(struct platform_device *pdev)
{
 struct riic_dev *riic;
 struct i2c_adapter *adap;
 struct resource *res;
 struct i2c_timings i2c_t;
 int i, ret;

 riic = devm_kzalloc(&pdev->dev, sizeof(*riic), GFP_KERNEL);
 if (!riic)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 riic->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(riic->base))
  return PTR_ERR(riic->base);

 riic->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(riic->clk)) {
  dev_err(&pdev->dev, "missing controller clock");
  return PTR_ERR(riic->clk);
 }

 for (i = 0; i < ARRAY_SIZE(riic_irqs); i++) {
  res = platform_get_resource(pdev, IORESOURCE_IRQ, riic_irqs[i].res_num);
  if (!res)
   return -ENODEV;

  ret = devm_request_irq(&pdev->dev, res->start, riic_irqs[i].isr,
     0, riic_irqs[i].name, riic);
  if (ret) {
   dev_err(&pdev->dev, "failed to request irq %s\n", riic_irqs[i].name);
   return ret;
  }
 }

 adap = &riic->adapter;
 i2c_set_adapdata(adap, riic);
 strlcpy(adap->name, "Renesas RIIC adapter", sizeof(adap->name));
 adap->owner = THIS_MODULE;
 adap->algo = &riic_algo;
 adap->dev.parent = &pdev->dev;
 adap->dev.of_node = pdev->dev.of_node;

 init_completion(&riic->msg_done);

 i2c_parse_fw_timings(&pdev->dev, &i2c_t, 1);

 pm_runtime_enable(&pdev->dev);

 ret = riic_init_hw(riic, &i2c_t);
 if (ret)
  goto out;

 ret = i2c_add_adapter(adap);
 if (ret)
  goto out;

 platform_set_drvdata(pdev, riic);

 dev_info(&pdev->dev, "registered with %dHz bus speed\n",
   i2c_t.bus_freq_hz);
 return 0;

out:
 pm_runtime_disable(&pdev->dev);
 return ret;
}
