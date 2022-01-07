
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int request_list; int lock; } ;
struct drm_i915_file_private {int bsd_engine; int hang_timestamp; TYPE_1__ mm; struct drm_file* file; struct drm_i915_private* dev_priv; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;


 int DRM_DEBUG (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int i915_gem_context_open (struct drm_i915_private*,struct drm_file*) ;
 int jiffies ;
 int kfree (struct drm_i915_file_private*) ;
 struct drm_i915_file_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
{
 struct drm_i915_file_private *file_priv;
 int ret;

 DRM_DEBUG("\n");

 file_priv = kzalloc(sizeof(*file_priv), GFP_KERNEL);
 if (!file_priv)
  return -ENOMEM;

 file->driver_priv = file_priv;
 file_priv->dev_priv = i915;
 file_priv->file = file;

 spin_lock_init(&file_priv->mm.lock);
 INIT_LIST_HEAD(&file_priv->mm.request_list);

 file_priv->bsd_engine = -1;
 file_priv->hang_timestamp = jiffies;

 ret = i915_gem_context_open(i915, file);
 if (ret)
  kfree(file_priv);

 return ret;
}
