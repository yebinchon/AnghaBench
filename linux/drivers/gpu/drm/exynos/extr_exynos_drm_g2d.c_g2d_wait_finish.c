
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_runqueue_node {scalar_t__ async; int complete; struct drm_file* filp; } ;
struct g2d_data {int runqueue_mutex; struct g2d_runqueue_node* runqueue_node; struct device* dev; } ;
struct drm_file {int dummy; } ;
struct device {int dummy; } ;


 int complete (int *) ;
 int dev_err (struct device*,char*) ;
 int g2d_free_runqueue_node (struct g2d_data*,struct g2d_runqueue_node*) ;
 int g2d_hw_reset (struct g2d_data*) ;
 int mdelay (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;

__attribute__((used)) static void g2d_wait_finish(struct g2d_data *g2d, struct drm_file *file)
{
 struct device *dev = g2d->dev;

 struct g2d_runqueue_node *runqueue_node = ((void*)0);
 unsigned int tries = 10;

 mutex_lock(&g2d->runqueue_mutex);


 if (!g2d->runqueue_node)
  goto out;

 runqueue_node = g2d->runqueue_node;


 if (file && runqueue_node->filp != file)
  goto out;

 mutex_unlock(&g2d->runqueue_mutex);


 while (tries-- && (g2d->runqueue_node == runqueue_node))
  mdelay(10);

 mutex_lock(&g2d->runqueue_mutex);

 if (g2d->runqueue_node != runqueue_node)
  goto out;

 dev_err(dev, "wait timed out, resetting engine...\n");
 g2d_hw_reset(g2d);






 pm_runtime_mark_last_busy(dev);
 pm_runtime_put_autosuspend(dev);

 complete(&runqueue_node->complete);
 if (runqueue_node->async)
  g2d_free_runqueue_node(g2d, runqueue_node);

out:
 mutex_unlock(&g2d->runqueue_mutex);
}
