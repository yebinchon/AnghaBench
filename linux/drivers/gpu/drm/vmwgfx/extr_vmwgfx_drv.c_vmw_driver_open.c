
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int tdev; } ;
struct vmw_fpriv {int * tfile; } ;
struct drm_file {struct vmw_fpriv* driver_priv; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct vmw_fpriv*) ;
 struct vmw_fpriv* kzalloc (int,int ) ;
 int * ttm_object_file_init (int ,int) ;
 scalar_t__ unlikely (int) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;

__attribute__((used)) static int vmw_driver_open(struct drm_device *dev, struct drm_file *file_priv)
{
 struct vmw_private *dev_priv = vmw_priv(dev);
 struct vmw_fpriv *vmw_fp;
 int ret = -ENOMEM;

 vmw_fp = kzalloc(sizeof(*vmw_fp), GFP_KERNEL);
 if (unlikely(!vmw_fp))
  return ret;

 vmw_fp->tfile = ttm_object_file_init(dev_priv->tdev, 10);
 if (unlikely(vmw_fp->tfile == ((void*)0)))
  goto out_no_tfile;

 file_priv->driver_priv = vmw_fp;

 return 0;

out_no_tfile:
 kfree(vmw_fp);
 return ret;
}
