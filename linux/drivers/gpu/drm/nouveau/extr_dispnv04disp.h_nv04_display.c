
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv04_display {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct nv04_display* priv; } ;


 TYPE_1__* nouveau_display (struct drm_device*) ;

__attribute__((used)) static inline struct nv04_display *
nv04_display(struct drm_device *dev)
{
 return nouveau_display(dev)->priv;
}
