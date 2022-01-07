
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_clk {int dummy; } ;


 int nv50_clk ;
 int nv50_clk_new_ (int *,struct nvkm_device*,int,int,struct nvkm_clk**) ;

int
nv50_clk_new(struct nvkm_device *device, int index, struct nvkm_clk **pclk)
{
 return nv50_clk_new_(&nv50_clk, device, index, 0, pclk);
}
