
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_device_tegra {scalar_t__ gpu_speedo_id; } ;
struct nvkm_device {TYPE_1__* func; } ;
struct nvkm_clk {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {int parent_rate; int div_to_pl; int pl_to_div; struct nvkm_clk base; } ;
struct gm20b_clk {int * dvfs_params; TYPE_2__ base; } ;
struct gk20a_clk_pllg_params {scalar_t__ max_m; scalar_t__ min_m; int max_u; } ;
struct TYPE_3__ {struct nvkm_device_tegra* (* tegra ) (struct nvkm_device*) ;} ;


 scalar_t__ DIV_ROUND_UP (int ,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KHZ ;
 int div_to_pl ;
 int gk20a_clk_ctor (struct nvkm_device*,int,int *,struct gk20a_clk_pllg_params*,TYPE_2__*) ;
 int gm20b_clk ;
 int gm20b_clk_init_fused_params (struct gm20b_clk*) ;
 int gm20b_clk_init_safe_fmax (struct gm20b_clk*) ;
 int gm20b_clk_new_speedo0 (struct nvkm_device*,int,struct nvkm_clk**) ;
 int gm20b_dvfs_params ;
 struct gk20a_clk_pllg_params gm20b_pllg_params ;
 int kfree (struct gm20b_clk*) ;
 struct gm20b_clk* kzalloc (int,int ) ;
 int nvkm_warn (struct nvkm_subdev*,char*) ;
 int pl_to_div ;
 struct nvkm_device_tegra* stub1 (struct nvkm_device*) ;

int
gm20b_clk_new(struct nvkm_device *device, int index, struct nvkm_clk **pclk)
{
 struct nvkm_device_tegra *tdev = device->func->tegra(device);
 struct gm20b_clk *clk;
 struct nvkm_subdev *subdev;
 struct gk20a_clk_pllg_params *clk_params;
 int ret;


 if (tdev->gpu_speedo_id == 0)
  return gm20b_clk_new_speedo0(device, index, pclk);


 clk = kzalloc(sizeof(*clk) + sizeof(*clk_params), GFP_KERNEL);
 if (!clk)
  return -ENOMEM;
 *pclk = &clk->base.base;
 subdev = &clk->base.base.subdev;


 clk_params = (void *) (clk + 1);
 *clk_params = gm20b_pllg_params;
 ret = gk20a_clk_ctor(device, index, &gm20b_clk, clk_params,
        &clk->base);
 if (ret)
  return ret;





 clk_params->max_m = clk_params->min_m = DIV_ROUND_UP(clk_params->max_u,
      (clk->base.parent_rate / KHZ));
 if (clk_params->max_m == 0) {
  nvkm_warn(subdev, "cannot use NAPLL, using legacy clock...\n");
  kfree(clk);
  return gm20b_clk_new_speedo0(device, index, pclk);
 }

 clk->base.pl_to_div = pl_to_div;
 clk->base.div_to_pl = div_to_pl;

 clk->dvfs_params = &gm20b_dvfs_params;

 ret = gm20b_clk_init_fused_params(clk);




 if (ret)
  nvkm_warn(subdev, "no fused calibration parameters\n");

 ret = gm20b_clk_init_safe_fmax(clk);
 if (ret)
  return ret;

 return 0;
}
