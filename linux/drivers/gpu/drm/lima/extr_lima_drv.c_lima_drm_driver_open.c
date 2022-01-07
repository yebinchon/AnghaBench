
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_drm_priv {int ctx_mgr; int vm; } ;
struct lima_device {int dummy; } ;
struct drm_file {struct lima_drm_priv* driver_priv; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct lima_drm_priv*) ;
 struct lima_drm_priv* kzalloc (int,int ) ;
 int lima_ctx_mgr_init (int *) ;
 int lima_vm_create (struct lima_device*) ;
 struct lima_device* to_lima_dev (struct drm_device*) ;

__attribute__((used)) static int lima_drm_driver_open(struct drm_device *dev, struct drm_file *file)
{
 int err;
 struct lima_drm_priv *priv;
 struct lima_device *ldev = to_lima_dev(dev);

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->vm = lima_vm_create(ldev);
 if (!priv->vm) {
  err = -ENOMEM;
  goto err_out0;
 }

 lima_ctx_mgr_init(&priv->ctx_mgr);

 file->driver_priv = priv;
 return 0;

err_out0:
 kfree(priv);
 return err;
}
