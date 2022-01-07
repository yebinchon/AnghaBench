
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nv50_disp_core_channel_dma_v0 {int dummy; } ;
struct nv50_disp {TYPE_4__* sync; TYPE_2__* disp; } ;
struct nv50_core_func {int dummy; } ;
struct nv50_core {int chan; struct nv50_core_func const* func; } ;
struct TYPE_5__ {int device; } ;
struct nouveau_drm {TYPE_1__ client; int dev; } ;
typedef int s32 ;
typedef int args ;
struct TYPE_7__ {int offset; } ;
struct TYPE_8__ {TYPE_3__ bo; } ;
struct TYPE_6__ {int object; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NV_ERROR (struct nouveau_drm*,char*,int ,int) ;
 struct nv50_core* kzalloc (int,int ) ;
 struct nv50_disp* nv50_disp (int ) ;
 int nv50_dmac_create (int *,int *,int *,int ,struct nv50_disp_core_channel_dma_v0*,int,int ,int *) ;

int
core507d_new_(const struct nv50_core_func *func, struct nouveau_drm *drm,
       s32 oclass, struct nv50_core **pcore)
{
 struct nv50_disp_core_channel_dma_v0 args = {};
 struct nv50_disp *disp = nv50_disp(drm->dev);
 struct nv50_core *core;
 int ret;

 if (!(core = *pcore = kzalloc(sizeof(*core), GFP_KERNEL)))
  return -ENOMEM;
 core->func = func;

 ret = nv50_dmac_create(&drm->client.device, &disp->disp->object,
          &oclass, 0, &args, sizeof(args),
          disp->sync->bo.offset, &core->chan);
 if (ret) {
  NV_ERROR(drm, "core%04x allocation failed: %d\n", oclass, ret);
  return ret;
 }

 return 0;
}
