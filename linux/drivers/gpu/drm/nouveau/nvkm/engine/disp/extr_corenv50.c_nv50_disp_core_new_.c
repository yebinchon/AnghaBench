
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_oclass {struct nvkm_object* parent; } ;
struct nvkm_object {int dummy; } ;
struct nv50_disp_core_channel_dma_v0 {int pushbuf; int version; } ;
struct nv50_disp_chan_mthd {int dummy; } ;
struct nv50_disp_chan_func {int dummy; } ;
struct nv50_disp {int dummy; } ;


 int ENOSYS ;
 int nv50_disp_dmac_new_ (struct nv50_disp_chan_func const*,struct nv50_disp_chan_mthd const*,struct nv50_disp*,int,int ,int ,struct nvkm_oclass const*,struct nvkm_object**) ;
 int nvif_ioctl (struct nvkm_object*,char*,int ,...) ;
 int nvif_unpack (int,void**,int *,struct nv50_disp_core_channel_dma_v0,int ,int ,int) ;

int
nv50_disp_core_new_(const struct nv50_disp_chan_func *func,
      const struct nv50_disp_chan_mthd *mthd,
      struct nv50_disp *disp, int chid,
      const struct nvkm_oclass *oclass, void *argv, u32 argc,
      struct nvkm_object **pobject)
{
 union {
  struct nv50_disp_core_channel_dma_v0 v0;
 } *args = argv;
 struct nvkm_object *parent = oclass->parent;
 u64 push;
 int ret = -ENOSYS;

 nvif_ioctl(parent, "create disp core channel dma size %d\n", argc);
 if (!(ret = nvif_unpack(ret, &argv, &argc, args->v0, 0, 0, 0))) {
  nvif_ioctl(parent, "create disp core channel dma vers %d "
       "pushbuf %016llx\n",
      args->v0.version, args->v0.pushbuf);
  push = args->v0.pushbuf;
 } else
  return ret;

 return nv50_disp_dmac_new_(func, mthd, disp, chid, 0,
       push, oclass, pobject);
}
