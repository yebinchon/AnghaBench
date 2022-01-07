
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct g2d_runqueue_node {int dummy; } ;
struct g2d_data {int irq; int runqueue_slab; int g2d_workq; int max_pool; int regs; int flags; int gate_clk; int runqueue_mutex; int cmdlist_mutex; int runqueue; int free_cmdlist; int runqueue_work; struct device* dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int G2D_BIT_ENGINE_BUSY ;
 int G2D_BIT_SUSPEND_RUNQUEUE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_POOL ;
 int PTR_ERR (int ) ;
 int clear_bit (int ,int *) ;
 int component_add (struct device*,int *) ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct g2d_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct g2d_data*) ;
 int g2d_component_ops ;
 int g2d_irq_handler ;
 int g2d_runqueue_worker ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (int ) ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct g2d_data*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;

__attribute__((used)) static int g2d_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;
 struct g2d_data *g2d;
 int ret;

 g2d = devm_kzalloc(dev, sizeof(*g2d), GFP_KERNEL);
 if (!g2d)
  return -ENOMEM;

 g2d->runqueue_slab = kmem_cache_create("g2d_runqueue_slab",
   sizeof(struct g2d_runqueue_node), 0, 0, ((void*)0));
 if (!g2d->runqueue_slab)
  return -ENOMEM;

 g2d->dev = dev;

 g2d->g2d_workq = create_singlethread_workqueue("g2d");
 if (!g2d->g2d_workq) {
  dev_err(dev, "failed to create workqueue\n");
  ret = -EINVAL;
  goto err_destroy_slab;
 }

 INIT_WORK(&g2d->runqueue_work, g2d_runqueue_worker);
 INIT_LIST_HEAD(&g2d->free_cmdlist);
 INIT_LIST_HEAD(&g2d->runqueue);

 mutex_init(&g2d->cmdlist_mutex);
 mutex_init(&g2d->runqueue_mutex);

 g2d->gate_clk = devm_clk_get(dev, "fimg2d");
 if (IS_ERR(g2d->gate_clk)) {
  dev_err(dev, "failed to get gate clock\n");
  ret = PTR_ERR(g2d->gate_clk);
  goto err_destroy_workqueue;
 }

 pm_runtime_use_autosuspend(dev);
 pm_runtime_set_autosuspend_delay(dev, 2000);
 pm_runtime_enable(dev);
 clear_bit(G2D_BIT_SUSPEND_RUNQUEUE, &g2d->flags);
 clear_bit(G2D_BIT_ENGINE_BUSY, &g2d->flags);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 g2d->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(g2d->regs)) {
  ret = PTR_ERR(g2d->regs);
  goto err_put_clk;
 }

 g2d->irq = platform_get_irq(pdev, 0);
 if (g2d->irq < 0) {
  dev_err(dev, "failed to get irq\n");
  ret = g2d->irq;
  goto err_put_clk;
 }

 ret = devm_request_irq(dev, g2d->irq, g2d_irq_handler, 0,
        "drm_g2d", g2d);
 if (ret < 0) {
  dev_err(dev, "irq request failed\n");
  goto err_put_clk;
 }

 g2d->max_pool = MAX_POOL;

 platform_set_drvdata(pdev, g2d);

 ret = component_add(dev, &g2d_component_ops);
 if (ret < 0) {
  dev_err(dev, "failed to register drm g2d device\n");
  goto err_put_clk;
 }

 return 0;

err_put_clk:
 pm_runtime_disable(dev);
err_destroy_workqueue:
 destroy_workqueue(g2d->g2d_workq);
err_destroy_slab:
 kmem_cache_destroy(g2d->runqueue_slab);
 return ret;
}
