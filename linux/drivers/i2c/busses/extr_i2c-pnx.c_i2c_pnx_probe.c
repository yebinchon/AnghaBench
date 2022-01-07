
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef unsigned long u32 ;
struct resource {int start; } ;
struct TYPE_13__ {scalar_t__ of_node; } ;
struct platform_device {char* name; TYPE_4__ dev; int id; } ;
struct TYPE_10__ {int of_node; TYPE_4__* parent; } ;
struct TYPE_12__ {int name; TYPE_1__ dev; int nr; struct i2c_pnx_algo_data* algo_data; int * algo; } ;
struct TYPE_11__ {int complete; int timer; } ;
struct i2c_pnx_algo_data {int irq; int clk; TYPE_3__ adapter; TYPE_2__ mif; int ioaddr; int timeout; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_PNX_SPEED_KHZ_DEFAULT ;
 int I2C_PNX_TIMEOUT_DEFAULT ;
 int I2C_REG_CKH (struct i2c_pnx_algo_data*) ;
 int I2C_REG_CKL (struct i2c_pnx_algo_data*) ;
 int I2C_REG_CTL (struct i2c_pnx_algo_data*) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 unsigned long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (TYPE_4__*,char*,int ,int ,int) ;
 int dev_err (TYPE_4__*,char*) ;
 int devm_clk_get (TYPE_4__*,int *) ;
 int devm_ioremap_resource (TYPE_4__*,struct resource*) ;
 struct i2c_pnx_algo_data* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_request_irq (TYPE_4__*,int,int ,int ,char*,struct i2c_pnx_algo_data*) ;
 int i2c_add_numbered_adapter (TYPE_3__*) ;
 int i2c_pnx_interrupt ;
 int i2c_pnx_timeout ;
 int init_completion (int *) ;
 int iowrite32 (unsigned long,int ) ;
 unsigned long mcntrl_reset ;
 int of_node_get (scalar_t__) ;
 int of_property_read_u32 (scalar_t__,char*,unsigned long*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct i2c_pnx_algo_data*) ;
 int pnx_algorithm ;
 int snprintf (int ,int,char*,char*) ;
 int timer_setup (int *,int ,int ) ;
 scalar_t__ wait_reset (struct i2c_pnx_algo_data*) ;

__attribute__((used)) static int i2c_pnx_probe(struct platform_device *pdev)
{
 unsigned long tmp;
 int ret = 0;
 struct i2c_pnx_algo_data *alg_data;
 unsigned long freq;
 struct resource *res;
 u32 speed = I2C_PNX_SPEED_KHZ_DEFAULT * 1000;

 alg_data = devm_kzalloc(&pdev->dev, sizeof(*alg_data), GFP_KERNEL);
 if (!alg_data)
  return -ENOMEM;

 platform_set_drvdata(pdev, alg_data);

 alg_data->adapter.dev.parent = &pdev->dev;
 alg_data->adapter.algo = &pnx_algorithm;
 alg_data->adapter.algo_data = alg_data;
 alg_data->adapter.nr = pdev->id;

 alg_data->timeout = I2C_PNX_TIMEOUT_DEFAULT;
 alg_data->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(alg_data->clk))
  return PTR_ERR(alg_data->clk);

 timer_setup(&alg_data->mif.timer, i2c_pnx_timeout, 0);

 snprintf(alg_data->adapter.name, sizeof(alg_data->adapter.name),
   "%s", pdev->name);


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 alg_data->ioaddr = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(alg_data->ioaddr))
  return PTR_ERR(alg_data->ioaddr);

 ret = clk_prepare_enable(alg_data->clk);
 if (ret)
  return ret;

 freq = clk_get_rate(alg_data->clk);
 tmp = (freq / speed) / 2 - 2;
 if (tmp > 0x3FF)
  tmp = 0x3FF;
 iowrite32(tmp, I2C_REG_CKH(alg_data));
 iowrite32(tmp, I2C_REG_CKL(alg_data));

 iowrite32(mcntrl_reset, I2C_REG_CTL(alg_data));
 if (wait_reset(alg_data)) {
  ret = -ENODEV;
  goto out_clock;
 }
 init_completion(&alg_data->mif.complete);

 alg_data->irq = platform_get_irq(pdev, 0);
 if (alg_data->irq < 0) {
  dev_err(&pdev->dev, "Failed to get IRQ from platform resource\n");
  ret = alg_data->irq;
  goto out_clock;
 }
 ret = devm_request_irq(&pdev->dev, alg_data->irq, i2c_pnx_interrupt,
          0, pdev->name, alg_data);
 if (ret)
  goto out_clock;


 ret = i2c_add_numbered_adapter(&alg_data->adapter);
 if (ret < 0)
  goto out_clock;

 dev_dbg(&pdev->dev, "%s: Master at %#8x, irq %d.\n",
  alg_data->adapter.name, res->start, alg_data->irq);

 return 0;

out_clock:
 clk_disable_unprepare(alg_data->clk);
 return ret;
}
