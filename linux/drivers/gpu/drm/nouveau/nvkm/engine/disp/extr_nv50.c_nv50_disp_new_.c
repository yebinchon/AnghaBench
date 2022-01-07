
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_disp {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv50_disp_func {int uevent; int super; } ;
struct nv50_disp {int uevent; int chan; int supervisor; int wq; struct nvkm_disp base; struct nv50_disp_func const* func; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int create_singlethread_workqueue (char*) ;
 struct nv50_disp* kzalloc (int,int ) ;
 int nv50_disp_ ;
 int nvkm_disp_ctor (int *,struct nvkm_device*,int,struct nvkm_disp*) ;
 int nvkm_event_init (int ,int,int ,int *) ;

int
nv50_disp_new_(const struct nv50_disp_func *func, struct nvkm_device *device,
        int index, struct nvkm_disp **pdisp)
{
 struct nv50_disp *disp;
 int ret;

 if (!(disp = kzalloc(sizeof(*disp), GFP_KERNEL)))
  return -ENOMEM;
 disp->func = func;
 *pdisp = &disp->base;

 ret = nvkm_disp_ctor(&nv50_disp_, device, index, &disp->base);
 if (ret)
  return ret;

 disp->wq = create_singlethread_workqueue("nvkm-disp");
 if (!disp->wq)
  return -ENOMEM;

 INIT_WORK(&disp->supervisor, func->super);

 return nvkm_event_init(func->uevent, 1, ARRAY_SIZE(disp->chan),
          &disp->uevent);
}
