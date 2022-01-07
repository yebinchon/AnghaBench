
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* cleanup ) (TYPE_2__*) ;} ;
struct TYPE_6__ {TYPE_2__ vm; } ;
struct TYPE_4__ {int wc_stash; } ;
struct drm_i915_private {TYPE_3__ ggtt; TYPE_1__ mm; } ;


 int ggtt_init_hw (TYPE_3__*) ;
 int i915_gem_init_stolen (struct drm_i915_private*) ;
 int stash_init (int *) ;
 int stub1 (TYPE_2__*) ;

int i915_ggtt_init_hw(struct drm_i915_private *dev_priv)
{
 int ret;

 stash_init(&dev_priv->mm.wc_stash);






 ret = ggtt_init_hw(&dev_priv->ggtt);
 if (ret)
  return ret;





 ret = i915_gem_init_stolen(dev_priv);
 if (ret)
  goto out_gtt_cleanup;

 return 0;

out_gtt_cleanup:
 dev_priv->ggtt.vm.cleanup(&dev_priv->ggtt.vm);
 return ret;
}
