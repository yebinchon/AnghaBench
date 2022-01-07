
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct host1x_syncpt {int dummy; } ;
struct TYPE_6__ {int num_syncpts; struct host1x_syncpt** syncpts; int class; struct device* dev; int * ops; int list; } ;
struct TYPE_4__ {TYPE_3__ base; int * ops; int version; int list; } ;
struct gr2d {int addr_regs; int clk; TYPE_1__ client; TYPE_2__* soc; } ;
struct TYPE_5__ {int version; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HOST1X_CLASS_GR2D ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_clk_get (struct device*,int *) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int * gr2d_addr_regs ;
 int gr2d_client_ops ;
 int gr2d_ops ;
 int host1x_client_register (TYPE_3__*) ;
 TYPE_2__* of_device_get_match_data (struct device*) ;
 int platform_set_drvdata (struct platform_device*,struct gr2d*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int gr2d_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct host1x_syncpt **syncpts;
 struct gr2d *gr2d;
 unsigned int i;
 int err;

 gr2d = devm_kzalloc(dev, sizeof(*gr2d), GFP_KERNEL);
 if (!gr2d)
  return -ENOMEM;

 gr2d->soc = of_device_get_match_data(dev);

 syncpts = devm_kzalloc(dev, sizeof(*syncpts), GFP_KERNEL);
 if (!syncpts)
  return -ENOMEM;

 gr2d->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(gr2d->clk)) {
  dev_err(dev, "cannot get clock\n");
  return PTR_ERR(gr2d->clk);
 }

 err = clk_prepare_enable(gr2d->clk);
 if (err) {
  dev_err(dev, "cannot turn on clock\n");
  return err;
 }

 INIT_LIST_HEAD(&gr2d->client.base.list);
 gr2d->client.base.ops = &gr2d_client_ops;
 gr2d->client.base.dev = dev;
 gr2d->client.base.class = HOST1X_CLASS_GR2D;
 gr2d->client.base.syncpts = syncpts;
 gr2d->client.base.num_syncpts = 1;

 INIT_LIST_HEAD(&gr2d->client.list);
 gr2d->client.version = gr2d->soc->version;
 gr2d->client.ops = &gr2d_ops;

 err = host1x_client_register(&gr2d->client.base);
 if (err < 0) {
  dev_err(dev, "failed to register host1x client: %d\n", err);
  clk_disable_unprepare(gr2d->clk);
  return err;
 }


 for (i = 0; i < ARRAY_SIZE(gr2d_addr_regs); i++)
  set_bit(gr2d_addr_regs[i], gr2d->addr_regs);

 platform_set_drvdata(pdev, gr2d);

 return 0;
}
