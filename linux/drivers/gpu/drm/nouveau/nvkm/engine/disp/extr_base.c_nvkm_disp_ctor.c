
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_disp_func {int dummy; } ;
struct nvkm_disp {int engine; int conn; int outp; int ior; int head; struct nvkm_disp_func const* func; } ;
struct nvkm_device {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int nvkm_disp ;
 int nvkm_engine_ctor (int *,struct nvkm_device*,int,int,int *) ;

int
nvkm_disp_ctor(const struct nvkm_disp_func *func, struct nvkm_device *device,
        int index, struct nvkm_disp *disp)
{
 disp->func = func;
 INIT_LIST_HEAD(&disp->head);
 INIT_LIST_HEAD(&disp->ior);
 INIT_LIST_HEAD(&disp->outp);
 INIT_LIST_HEAD(&disp->conn);
 return nvkm_engine_ctor(&nvkm_disp, device, index, 1, &disp->engine);
}
