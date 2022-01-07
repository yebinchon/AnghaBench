
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_fpriv {int tfile; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int kfree (struct vmw_fpriv*) ;
 int ttm_object_file_release (int *) ;
 struct vmw_fpriv* vmw_fpriv (struct drm_file*) ;

__attribute__((used)) static void vmw_postclose(struct drm_device *dev,
    struct drm_file *file_priv)
{
 struct vmw_fpriv *vmw_fp = vmw_fpriv(file_priv);

 ttm_object_file_release(&vmw_fp->tfile);
 kfree(vmw_fp);
}
