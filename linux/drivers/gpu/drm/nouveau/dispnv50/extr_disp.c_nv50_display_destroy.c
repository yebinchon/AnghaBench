
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv50_disp {scalar_t__ sync; int core; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int * priv; } ;


 int kfree (struct nv50_disp*) ;
 int nouveau_bo_ref (int *,scalar_t__*) ;
 int nouveau_bo_unmap (scalar_t__) ;
 int nouveau_bo_unpin (scalar_t__) ;
 TYPE_1__* nouveau_display (struct drm_device*) ;
 int nv50_core_del (int *) ;
 struct nv50_disp* nv50_disp (struct drm_device*) ;

__attribute__((used)) static void
nv50_display_destroy(struct drm_device *dev)
{
 struct nv50_disp *disp = nv50_disp(dev);

 nv50_core_del(&disp->core);

 nouveau_bo_unmap(disp->sync);
 if (disp->sync)
  nouveau_bo_unpin(disp->sync);
 nouveau_bo_ref(((void*)0), &disp->sync);

 nouveau_display(dev)->priv = ((void*)0);
 kfree(disp);
}
