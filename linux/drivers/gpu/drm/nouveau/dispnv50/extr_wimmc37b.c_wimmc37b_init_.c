
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvc37b_window_imm_channel_dma_v0 {int pushbuf; int index; } ;
struct TYPE_6__ {int data; int wimm; } ;
struct nv50_wndw {int id; struct nv50_wimm_func const* immd; TYPE_3__ interlock; int wimm; } ;
struct nv50_wimm_func {int dummy; } ;
struct nv50_disp {TYPE_2__* disp; } ;
struct TYPE_4__ {int device; } ;
struct nouveau_drm {TYPE_1__ client; int dev; } ;
typedef int s32 ;
typedef int args ;
struct TYPE_5__ {int object; } ;


 int NV_ERROR (struct nouveau_drm*,char*,int ,int) ;
 struct nv50_disp* nv50_disp (int ) ;
 int nv50_dmac_create (int *,int *,int *,int ,struct nvc37b_window_imm_channel_dma_v0*,int,int ,int *) ;

__attribute__((used)) static int
wimmc37b_init_(const struct nv50_wimm_func *func, struct nouveau_drm *drm,
        s32 oclass, struct nv50_wndw *wndw)
{
 struct nvc37b_window_imm_channel_dma_v0 args = {
  .pushbuf = 0xb0007b00 | wndw->id,
  .index = wndw->id,
 };
 struct nv50_disp *disp = nv50_disp(drm->dev);
 int ret;

 ret = nv50_dmac_create(&drm->client.device, &disp->disp->object,
          &oclass, 0, &args, sizeof(args), 0,
          &wndw->wimm);
 if (ret) {
  NV_ERROR(drm, "wimm%04x allocation failed: %d\n", oclass, ret);
  return ret;
 }

 wndw->interlock.wimm = wndw->interlock.data;
 wndw->immd = func;
 return 0;
}
