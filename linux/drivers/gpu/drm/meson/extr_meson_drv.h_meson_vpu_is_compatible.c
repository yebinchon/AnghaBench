
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {int compat; } ;
typedef enum vpu_compatible { ____Placeholder_vpu_compatible } vpu_compatible ;



__attribute__((used)) static inline int meson_vpu_is_compatible(struct meson_drm *priv,
       enum vpu_compatible family)
{
 return priv->compat == family;
}
