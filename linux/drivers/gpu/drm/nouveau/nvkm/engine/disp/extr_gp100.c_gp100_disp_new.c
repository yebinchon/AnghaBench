
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_disp {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gp100_disp ;
 int nv50_disp_new_ (int *,struct nvkm_device*,int,struct nvkm_disp**) ;

int
gp100_disp_new(struct nvkm_device *device, int index, struct nvkm_disp **pdisp)
{
 return nv50_disp_new_(&gp100_disp, device, index, pdisp);
}
