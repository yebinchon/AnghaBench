
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct g2d_data {int runqueue_slab; int g2d_workq; } ;


 int component_del (int *,int *) ;
 int destroy_workqueue (int ) ;
 int g2d_component_ops ;
 int g2d_fini_cmdlist (struct g2d_data*) ;
 int g2d_remove_runqueue_nodes (struct g2d_data*,int *) ;
 int kmem_cache_destroy (int ) ;
 struct g2d_data* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_dont_use_autosuspend (int *) ;

__attribute__((used)) static int g2d_remove(struct platform_device *pdev)
{
 struct g2d_data *g2d = platform_get_drvdata(pdev);

 component_del(&pdev->dev, &g2d_component_ops);


 g2d_remove_runqueue_nodes(g2d, ((void*)0));

 pm_runtime_dont_use_autosuspend(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 g2d_fini_cmdlist(g2d);
 destroy_workqueue(g2d->g2d_workq);
 kmem_cache_destroy(g2d->runqueue_slab);

 return 0;
}
