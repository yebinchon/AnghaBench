
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * ops; int regs; struct device* dev; } ;
struct TYPE_9__ {int num_syncpts; struct host1x_syncpt** syncpts; int class; struct device* dev; int * ops; int list; } ;
struct TYPE_7__ {TYPE_3__ base; int * ops; int version; int list; } ;
struct vic {TYPE_5__ falcon; TYPE_1__ client; TYPE_2__* config; struct device* dev; int regs; int rst; int clk; } ;
struct resource {int dummy; } ;
struct device {int pm_domain; } ;
struct platform_device {struct device dev; } ;
struct host1x_syncpt {int dummy; } ;
struct TYPE_8__ {int version; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int HOST1X_CLASS_VIC ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int devm_reset_control_get (struct device*,char*) ;
 int falcon_exit (TYPE_5__*) ;
 int falcon_init (TYPE_5__*) ;
 int host1x_client_register (TYPE_3__*) ;
 int host1x_client_unregister (TYPE_3__*) ;
 TYPE_2__* of_device_get_match_data (struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct vic*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_enabled (struct device*) ;
 int vic_client_ops ;
 int vic_falcon_ops ;
 int vic_ops ;
 int vic_runtime_resume (struct device*) ;

__attribute__((used)) static int vic_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct host1x_syncpt **syncpts;
 struct resource *regs;
 struct vic *vic;
 int err;

 vic = devm_kzalloc(dev, sizeof(*vic), GFP_KERNEL);
 if (!vic)
  return -ENOMEM;

 vic->config = of_device_get_match_data(dev);

 syncpts = devm_kzalloc(dev, sizeof(*syncpts), GFP_KERNEL);
 if (!syncpts)
  return -ENOMEM;

 regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!regs) {
  dev_err(&pdev->dev, "failed to get registers\n");
  return -ENXIO;
 }

 vic->regs = devm_ioremap_resource(dev, regs);
 if (IS_ERR(vic->regs))
  return PTR_ERR(vic->regs);

 vic->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(vic->clk)) {
  dev_err(&pdev->dev, "failed to get clock\n");
  return PTR_ERR(vic->clk);
 }

 if (!dev->pm_domain) {
  vic->rst = devm_reset_control_get(dev, "vic");
  if (IS_ERR(vic->rst)) {
   dev_err(&pdev->dev, "failed to get reset\n");
   return PTR_ERR(vic->rst);
  }
 }

 vic->falcon.dev = dev;
 vic->falcon.regs = vic->regs;
 vic->falcon.ops = &vic_falcon_ops;

 err = falcon_init(&vic->falcon);
 if (err < 0)
  return err;

 platform_set_drvdata(pdev, vic);

 INIT_LIST_HEAD(&vic->client.base.list);
 vic->client.base.ops = &vic_client_ops;
 vic->client.base.dev = dev;
 vic->client.base.class = HOST1X_CLASS_VIC;
 vic->client.base.syncpts = syncpts;
 vic->client.base.num_syncpts = 1;
 vic->dev = dev;

 INIT_LIST_HEAD(&vic->client.list);
 vic->client.version = vic->config->version;
 vic->client.ops = &vic_ops;

 err = host1x_client_register(&vic->client.base);
 if (err < 0) {
  dev_err(dev, "failed to register host1x client: %d\n", err);
  goto exit_falcon;
 }

 pm_runtime_enable(&pdev->dev);
 if (!pm_runtime_enabled(&pdev->dev)) {
  err = vic_runtime_resume(&pdev->dev);
  if (err < 0)
   goto unregister_client;
 }

 return 0;

unregister_client:
 host1x_client_unregister(&vic->client.base);
exit_falcon:
 falcon_exit(&vic->falcon);

 return err;
}
