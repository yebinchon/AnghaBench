
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct drm_info_node* private; } ;
struct drm_printer {int dummy; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {struct armada_private* dev_private; } ;
struct armada_private {int linear_lock; int linear; } ;
struct TYPE_2__ {struct drm_device* dev; } ;


 int drm_mm_print (int *,struct drm_printer*) ;
 struct drm_printer drm_seq_file_printer (struct seq_file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int armada_debugfs_gem_linear_show(struct seq_file *m, void *data)
{
 struct drm_info_node *node = m->private;
 struct drm_device *dev = node->minor->dev;
 struct armada_private *priv = dev->dev_private;
 struct drm_printer p = drm_seq_file_printer(m);

 mutex_lock(&priv->linear_lock);
 drm_mm_print(&priv->linear, &p);
 mutex_unlock(&priv->linear_lock);

 return 0;
}
