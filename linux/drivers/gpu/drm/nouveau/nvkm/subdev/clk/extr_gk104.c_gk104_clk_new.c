
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_clk {int dummy; } ;
struct gk104_clk {struct nvkm_clk base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int gk104_clk ;
 struct gk104_clk* kzalloc (int,int ) ;
 int nvkm_clk_ctor (int *,struct nvkm_device*,int,int,struct nvkm_clk*) ;

int
gk104_clk_new(struct nvkm_device *device, int index, struct nvkm_clk **pclk)
{
 struct gk104_clk *clk;

 if (!(clk = kzalloc(sizeof(*clk), GFP_KERNEL)))
  return -ENOMEM;
 *pclk = &clk->base;

 return nvkm_clk_ctor(&gk104_clk, device, index, 1, &clk->base);
}
