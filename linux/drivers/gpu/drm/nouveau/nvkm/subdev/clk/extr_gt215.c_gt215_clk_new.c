
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_clk {int dummy; } ;
struct gt215_clk {struct nvkm_clk base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int gt215_clk ;
 struct gt215_clk* kzalloc (int,int ) ;
 int nvkm_clk_ctor (int *,struct nvkm_device*,int,int,struct nvkm_clk*) ;

int
gt215_clk_new(struct nvkm_device *device, int index, struct nvkm_clk **pclk)
{
 struct gt215_clk *clk;

 if (!(clk = kzalloc(sizeof(*clk), GFP_KERNEL)))
  return -ENOMEM;
 *pclk = &clk->base;

 return nvkm_clk_ctor(&gt215_clk, device, index, 1, &clk->base);
}
