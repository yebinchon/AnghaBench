
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_clk_func {int dummy; } ;
struct nvkm_clk {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_clk* kzalloc (int,int ) ;
 int nvkm_clk_ctor (struct nvkm_clk_func const*,struct nvkm_device*,int,int,struct nvkm_clk*) ;

int
nvkm_clk_new_(const struct nvkm_clk_func *func, struct nvkm_device *device,
       int index, bool allow_reclock, struct nvkm_clk **pclk)
{
 if (!(*pclk = kzalloc(sizeof(**pclk), GFP_KERNEL)))
  return -ENOMEM;
 return nvkm_clk_ctor(func, device, index, allow_reclock, *pclk);
}
