
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_drm_priv {int vm; int ctx_mgr; } ;
struct drm_file {struct lima_drm_priv* driver_priv; } ;
struct drm_device {int dummy; } ;


 int kfree (struct lima_drm_priv*) ;
 int lima_ctx_mgr_fini (int *) ;
 int lima_vm_put (int ) ;

__attribute__((used)) static void lima_drm_driver_postclose(struct drm_device *dev, struct drm_file *file)
{
 struct lima_drm_priv *priv = file->driver_priv;

 lima_ctx_mgr_fini(&priv->ctx_mgr);
 lima_vm_put(priv->vm);
 kfree(priv);
}
