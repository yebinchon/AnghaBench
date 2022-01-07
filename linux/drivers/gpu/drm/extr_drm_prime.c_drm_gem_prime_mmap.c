
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int vm_pgoff; } ;
struct file {struct file* private_data; int minor; } ;
struct drm_gem_object {int vma_node; TYPE_3__* dev; } ;
struct drm_file {struct drm_file* private_data; int minor; } ;
struct TYPE_6__ {TYPE_2__* driver; int primary; } ;
struct TYPE_5__ {TYPE_1__* fops; } ;
struct TYPE_4__ {int (* mmap ) (struct file*,struct vm_area_struct*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_vma_node_allow (int *,struct file*) ;
 int drm_vma_node_revoke (int *,struct file*) ;
 scalar_t__ drm_vma_node_start (int *) ;
 int kfree (struct file*) ;
 struct file* kzalloc (int,int ) ;
 int stub1 (struct file*,struct vm_area_struct*) ;

int drm_gem_prime_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
{
 struct drm_file *priv;
 struct file *fil;
 int ret;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 fil = kzalloc(sizeof(*fil), GFP_KERNEL);
 if (!priv || !fil) {
  ret = -ENOMEM;
  goto out;
 }


 priv->minor = obj->dev->primary;
 fil->private_data = priv;

 ret = drm_vma_node_allow(&obj->vma_node, priv);
 if (ret)
  goto out;

 vma->vm_pgoff += drm_vma_node_start(&obj->vma_node);

 ret = obj->dev->driver->fops->mmap(fil, vma);

 drm_vma_node_revoke(&obj->vma_node, priv);
out:
 kfree(priv);
 kfree(fil);

 return ret;
}
