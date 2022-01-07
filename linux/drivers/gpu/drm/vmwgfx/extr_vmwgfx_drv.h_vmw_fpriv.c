
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_fpriv {int dummy; } ;
struct drm_file {scalar_t__ driver_priv; } ;



__attribute__((used)) static inline struct vmw_fpriv *vmw_fpriv(struct drm_file *file_priv)
{
 return (struct vmw_fpriv *)file_priv->driver_priv;
}
