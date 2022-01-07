
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct g2d_runqueue_node {int complete; scalar_t__ async; int list; struct drm_file* filp; int pid; struct list_head event_list; struct list_head run_cmdlist; } ;
struct g2d_data {int runqueue_work; int g2d_workq; int runqueue_mutex; int runqueue; int runqueue_slab; int dev; } ;
struct exynos_drm_private {int g2d_dev; } ;
struct drm_file {struct drm_exynos_file_private* driver_priv; } ;
struct drm_exynos_g2d_exec {scalar_t__ async; } ;
struct drm_exynos_file_private {int event_list; int inuse_cmdlist; } ;
struct drm_device {struct exynos_drm_private* dev_private; } ;
struct TYPE_2__ {int pid; } ;


 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 TYPE_1__* current ;
 int dev_err (int ,char*) ;
 struct g2d_data* dev_get_drvdata (int ) ;
 int g2d_free_runqueue_node (struct g2d_data*,struct g2d_runqueue_node*) ;
 int init_completion (int *) ;
 struct g2d_runqueue_node* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct g2d_runqueue_node*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (struct list_head*) ;
 int list_splice_init (int *,struct list_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;
 int wait_for_completion (int *) ;

int exynos_g2d_exec_ioctl(struct drm_device *drm_dev, void *data,
     struct drm_file *file)
{
 struct drm_exynos_file_private *file_priv = file->driver_priv;
 struct exynos_drm_private *priv = drm_dev->dev_private;
 struct g2d_data *g2d = dev_get_drvdata(priv->g2d_dev);
 struct drm_exynos_g2d_exec *req = data;
 struct g2d_runqueue_node *runqueue_node;
 struct list_head *run_cmdlist;
 struct list_head *event_list;

 runqueue_node = kmem_cache_alloc(g2d->runqueue_slab, GFP_KERNEL);
 if (!runqueue_node)
  return -ENOMEM;

 run_cmdlist = &runqueue_node->run_cmdlist;
 event_list = &runqueue_node->event_list;
 INIT_LIST_HEAD(run_cmdlist);
 INIT_LIST_HEAD(event_list);
 init_completion(&runqueue_node->complete);
 runqueue_node->async = req->async;

 list_splice_init(&file_priv->inuse_cmdlist, run_cmdlist);
 list_splice_init(&file_priv->event_list, event_list);

 if (list_empty(run_cmdlist)) {
  dev_err(g2d->dev, "there is no inuse cmdlist\n");
  kmem_cache_free(g2d->runqueue_slab, runqueue_node);
  return -EPERM;
 }

 mutex_lock(&g2d->runqueue_mutex);
 runqueue_node->pid = current->pid;
 runqueue_node->filp = file;
 list_add_tail(&runqueue_node->list, &g2d->runqueue);
 mutex_unlock(&g2d->runqueue_mutex);


 queue_work(g2d->g2d_workq, &g2d->runqueue_work);

 if (runqueue_node->async)
  goto out;

 wait_for_completion(&runqueue_node->complete);
 g2d_free_runqueue_node(g2d, runqueue_node);

out:
 return 0;
}
