
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_i915_file_private {int bsd_engine; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;


 int get_random_int () ;
 int num_vcs_engines (struct drm_i915_private*) ;

__attribute__((used)) static unsigned int
gen8_dispatch_bsd_engine(struct drm_i915_private *dev_priv,
    struct drm_file *file)
{
 struct drm_i915_file_private *file_priv = file->driver_priv;


 if ((int)file_priv->bsd_engine < 0)
  file_priv->bsd_engine =
   get_random_int() % num_vcs_engines(dev_priv);

 return file_priv->bsd_engine;
}
