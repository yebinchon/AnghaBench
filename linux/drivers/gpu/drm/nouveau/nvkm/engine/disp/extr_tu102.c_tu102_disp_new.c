
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_disp {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nv50_disp_new_ (int *,struct nvkm_device*,int,struct nvkm_disp**) ;
 int tu102_disp ;

int
tu102_disp_new(struct nvkm_device *device, int index, struct nvkm_disp **pdisp)
{
 return nv50_disp_new_(&tu102_disp, device, index, pdisp);
}
