
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct drm_gem_object {TYPE_4__* dev; int size; } ;
struct dma_buf {int dummy; } ;
struct TYPE_10__ {TYPE_2__* driver; } ;
struct TYPE_9__ {int flags; struct drm_gem_object* priv; int size; int * ops; int owner; int exp_name; } ;
struct TYPE_8__ {TYPE_1__* fops; } ;
struct TYPE_7__ {int owner; } ;


 int DEFINE_DMA_BUF_EXPORT_INFO (TYPE_3__) ;
 int KBUILD_MODNAME ;
 struct dma_buf* drm_gem_dmabuf_export (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__ exp_info ;
 int tegra_gem_prime_dmabuf_ops ;

struct dma_buf *tegra_gem_prime_export(struct drm_gem_object *gem,
           int flags)
{
 DEFINE_DMA_BUF_EXPORT_INFO(exp_info);

 exp_info.exp_name = KBUILD_MODNAME;
 exp_info.owner = gem->dev->driver->fops->owner;
 exp_info.ops = &tegra_gem_prime_dmabuf_ops;
 exp_info.size = gem->size;
 exp_info.flags = flags;
 exp_info.priv = gem;

 return drm_gem_dmabuf_export(gem->dev, &exp_info);
}
