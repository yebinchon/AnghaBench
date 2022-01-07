
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int user; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct nv50_wndw {struct nv50_wimm_func const* immd; TYPE_3__ wimm; int id; } ;
struct nv50_wimm_func {int dummy; } ;
struct nv50_disp_overlay_v0 {int head; } ;
struct nv50_disp {TYPE_1__* disp; } ;
struct nouveau_drm {int dev; } ;
typedef int s32 ;
typedef int args ;
struct TYPE_4__ {int object; } ;


 int NV_ERROR (struct nouveau_drm*,char*,int ,int) ;
 struct nv50_disp* nv50_disp (int ) ;
 int nvif_object_init (int *,int ,int ,struct nv50_disp_overlay_v0*,int,int *) ;
 int nvif_object_map (int *,int *,int ) ;

__attribute__((used)) static int
oimm507b_init_(const struct nv50_wimm_func *func, struct nouveau_drm *drm,
        s32 oclass, struct nv50_wndw *wndw)
{
 struct nv50_disp_overlay_v0 args = {
  .head = wndw->id,
 };
 struct nv50_disp *disp = nv50_disp(drm->dev);
 int ret;

 ret = nvif_object_init(&disp->disp->object, 0, oclass, &args,
          sizeof(args), &wndw->wimm.base.user);
 if (ret) {
  NV_ERROR(drm, "oimm%04x allocation failed: %d\n", oclass, ret);
  return ret;
 }

 nvif_object_map(&wndw->wimm.base.user, ((void*)0), 0);
 wndw->immd = func;
 return 0;
}
