
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_clk {int dummy; } ;
struct gf100_clk {struct nvkm_clk base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int gf100_clk ;
 struct gf100_clk* kzalloc (int,int ) ;
 int nvkm_clk_ctor (int *,struct nvkm_device*,int,int,struct nvkm_clk*) ;

int
gf100_clk_new(struct nvkm_device *device, int index, struct nvkm_clk **pclk)
{
 struct gf100_clk *clk;

 if (!(clk = kzalloc(sizeof(*clk), GFP_KERNEL)))
  return -ENOMEM;
 *pclk = &clk->base;

 return nvkm_clk_ctor(&gf100_clk, device, index, 0, &clk->base);
}
