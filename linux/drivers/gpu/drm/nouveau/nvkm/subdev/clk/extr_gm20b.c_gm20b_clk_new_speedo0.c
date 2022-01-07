
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_clk {int dummy; } ;
struct gk20a_clk {int div_to_pl; int pl_to_div; struct nvkm_clk base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int div_to_pl ;
 int gk20a_clk_ctor (struct nvkm_device*,int,int *,int *,struct gk20a_clk*) ;
 int gm20b_clk_speedo0 ;
 int gm20b_pllg_params ;
 struct gk20a_clk* kzalloc (int,int ) ;
 int pl_to_div ;

__attribute__((used)) static int
gm20b_clk_new_speedo0(struct nvkm_device *device, int index,
        struct nvkm_clk **pclk)
{
 struct gk20a_clk *clk;
 int ret;

 clk = kzalloc(sizeof(*clk), GFP_KERNEL);
 if (!clk)
  return -ENOMEM;
 *pclk = &clk->base;

 ret = gk20a_clk_ctor(device, index, &gm20b_clk_speedo0,
        &gm20b_pllg_params, clk);

 clk->pl_to_div = pl_to_div;
 clk->div_to_pl = div_to_pl;

 return ret;
}
