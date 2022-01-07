
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_disp {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nv04_disp ;
 int nv04_head_new (struct nvkm_disp*,int) ;
 int nvkm_disp_new_ (int *,struct nvkm_device*,int,struct nvkm_disp**) ;

int
nv04_disp_new(struct nvkm_device *device, int index, struct nvkm_disp **pdisp)
{
 int ret, i;

 ret = nvkm_disp_new_(&nv04_disp, device, index, pdisp);
 if (ret)
  return ret;

 for (i = 0; i < 2; i++) {
  ret = nv04_head_new(*pdisp, i);
  if (ret)
   return ret;
 }

 return 0;
}
