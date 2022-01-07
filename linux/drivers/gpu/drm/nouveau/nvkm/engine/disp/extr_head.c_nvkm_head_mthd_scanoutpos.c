
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct TYPE_4__ {int hblanke; int hblanks; int htotal; int vblanke; int vblanks; int vtotal; } ;
struct nvkm_head {TYPE_1__* func; TYPE_2__ arm; } ;
struct nv04_disp_scanoutpos_v0 {void** time; int vline; int hline; int htotal; int vtotal; int hblanke; int hblanks; int vblanke; int vblanks; int version; } ;
struct TYPE_3__ {int (* rgpos ) (struct nvkm_head*,int *,int *) ;int (* state ) (struct nvkm_head*,TYPE_2__*) ;} ;


 int ENOSYS ;
 int ENOTSUPP ;
 int ktime_get () ;
 void* ktime_to_ns (int ) ;
 int nvif_ioctl (struct nvkm_object*,char*,int ) ;
 int nvif_unpack (int,void**,int *,struct nv04_disp_scanoutpos_v0,int ,int ,int) ;
 int stub1 (struct nvkm_head*,TYPE_2__*) ;
 int stub2 (struct nvkm_head*,int *,int *) ;

int
nvkm_head_mthd_scanoutpos(struct nvkm_object *object,
     struct nvkm_head *head, void *data, u32 size)
{
 union {
  struct nv04_disp_scanoutpos_v0 v0;
 } *args = data;
 int ret = -ENOSYS;

 nvif_ioctl(object, "head scanoutpos size %d\n", size);
 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 0))) {
  nvif_ioctl(object, "head scanoutpos vers %d\n",
      args->v0.version);

  head->func->state(head, &head->arm);
  args->v0.vtotal = head->arm.vtotal;
  args->v0.vblanks = head->arm.vblanks;
  args->v0.vblanke = head->arm.vblanke;
  args->v0.htotal = head->arm.htotal;
  args->v0.hblanks = head->arm.hblanks;
  args->v0.hblanke = head->arm.hblanke;





  if (!args->v0.vtotal || !args->v0.htotal)
   return -ENOTSUPP;

  args->v0.time[0] = ktime_to_ns(ktime_get());
  head->func->rgpos(head, &args->v0.hline, &args->v0.vline);
  args->v0.time[1] = ktime_to_ns(ktime_get());
 } else
  return ret;

 return 0;
}
