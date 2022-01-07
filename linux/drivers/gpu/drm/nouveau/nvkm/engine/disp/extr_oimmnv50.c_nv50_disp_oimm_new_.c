
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_oclass {struct nvkm_object* parent; } ;
struct nvkm_object {int dummy; } ;
struct nv50_disp_overlay_v0 {int head; int version; } ;
struct nv50_disp_chan_func {int dummy; } ;
struct nv50_disp {int base; } ;


 int EINVAL ;
 int ENOSYS ;
 int nv50_disp_chan_new_ (struct nv50_disp_chan_func const*,int *,struct nv50_disp*,int,int,int,struct nvkm_oclass const*,struct nvkm_object**) ;
 int nvif_ioctl (struct nvkm_object*,char*,int ,...) ;
 int nvif_unpack (int,void**,int *,struct nv50_disp_overlay_v0,int ,int ,int) ;
 int nvkm_head_find (int *,int) ;

int
nv50_disp_oimm_new_(const struct nv50_disp_chan_func *func,
      struct nv50_disp *disp, int ctrl, int user,
      const struct nvkm_oclass *oclass, void *argv, u32 argc,
      struct nvkm_object **pobject)
{
 union {
  struct nv50_disp_overlay_v0 v0;
 } *args = argv;
 struct nvkm_object *parent = oclass->parent;
 int head, ret = -ENOSYS;

 nvif_ioctl(parent, "create disp overlay size %d\n", argc);
 if (!(ret = nvif_unpack(ret, &argv, &argc, args->v0, 0, 0, 0))) {
  nvif_ioctl(parent, "create disp overlay vers %d head %d\n",
      args->v0.version, args->v0.head);
  if (!nvkm_head_find(&disp->base, args->v0.head))
   return -EINVAL;
  head = args->v0.head;
 } else
  return ret;

 return nv50_disp_chan_new_(func, ((void*)0), disp, ctrl + head, user + head,
       head, oclass, pobject);
}
