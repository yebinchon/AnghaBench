
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct msm_drm_private {struct msm_gpu* gpu; } ;
struct drm_printer {int dummy; } ;
struct drm_info_node {TYPE_2__* info_ent; TYPE_1__* minor; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_4__ {int (* data ) (struct msm_gpu*,struct drm_printer*) ;} ;
struct TYPE_3__ {struct drm_device* dev; } ;


 struct drm_printer drm_seq_file_printer (struct seq_file*) ;

__attribute__((used)) static int show(struct seq_file *m, void *arg)
{
 struct drm_info_node *node = (struct drm_info_node *) m->private;
 struct drm_device *dev = node->minor->dev;
 struct msm_drm_private *priv = dev->dev_private;
 struct drm_printer p = drm_seq_file_printer(m);
 int (*show)(struct msm_gpu *gpu, struct drm_printer *p) =
  node->info_ent->data;

 return show(priv->gpu, &p);
}
