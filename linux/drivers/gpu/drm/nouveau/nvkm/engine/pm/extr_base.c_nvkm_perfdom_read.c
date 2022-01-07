
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_pm {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_perfdom {scalar_t__ clk; TYPE_3__** ctr; TYPE_2__* func; TYPE_1__* perfmon; struct nvkm_object object; } ;
struct nvif_perfdom_read_v0 {scalar_t__ clk; int * ctr; int version; } ;
struct TYPE_6__ {int ctr; } ;
struct TYPE_5__ {int (* read ) (struct nvkm_pm*,struct nvkm_perfdom*,TYPE_3__*) ;} ;
struct TYPE_4__ {struct nvkm_pm* pm; } ;


 int EAGAIN ;
 int ENOSYS ;
 int nvif_ioctl (struct nvkm_object*,char*,int ) ;
 int nvif_unpack (int,void**,int *,struct nvif_perfdom_read_v0,int ,int ,int) ;
 int stub1 (struct nvkm_pm*,struct nvkm_perfdom*,TYPE_3__*) ;

__attribute__((used)) static int
nvkm_perfdom_read(struct nvkm_perfdom *dom, void *data, u32 size)
{
 union {
  struct nvif_perfdom_read_v0 v0;
 } *args = data;
 struct nvkm_object *object = &dom->object;
 struct nvkm_pm *pm = dom->perfmon->pm;
 int ret = -ENOSYS, i;

 nvif_ioctl(object, "perfdom read size %d\n", size);
 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 0))) {
  nvif_ioctl(object, "perfdom read vers %d\n", args->v0.version);
 } else
  return ret;

 for (i = 0; i < 4; i++) {
  if (dom->ctr[i])
   dom->func->read(pm, dom, dom->ctr[i]);
 }

 if (!dom->clk)
  return -EAGAIN;

 for (i = 0; i < 4; i++)
  if (dom->ctr[i])
   args->v0.ctr[i] = dom->ctr[i]->ctr;
 args->v0.clk = dom->clk;
 return 0;
}
