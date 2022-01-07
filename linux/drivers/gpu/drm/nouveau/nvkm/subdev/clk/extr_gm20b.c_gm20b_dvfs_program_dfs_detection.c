
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct gm20b_clk_dvfs {int dfs_coeff; int dfs_det_max; int dfs_ext_cal; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct gm20b_clk {TYPE_3__ base; } ;


 int GPCPLL_DVFS0 ;
 int GPCPLL_DVFS0_DFS_COEFF_MASK ;
 int GPCPLL_DVFS0_DFS_COEFF_SHIFT ;
 int GPCPLL_DVFS0_DFS_DET_MAX_MASK ;
 int GPCPLL_DVFS0_DFS_DET_MAX_SHIFT ;
 int GPC_BCAST_GPCPLL_DVFS2 ;
 int GPC_BCAST_GPCPLL_DVFS2_DFS_EXT_STROBE_BIT ;
 int gm20b_dvfs_program_ext_cal (struct gm20b_clk*,int ) ;
 int nvkm_mask (struct nvkm_device*,int ,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void
gm20b_dvfs_program_dfs_detection(struct gm20b_clk *clk,
     struct gm20b_clk_dvfs *dvfs)
{
 struct nvkm_device *device = clk->base.base.subdev.device;


 nvkm_mask(device, GPC_BCAST_GPCPLL_DVFS2,
    GPC_BCAST_GPCPLL_DVFS2_DFS_EXT_STROBE_BIT,
    GPC_BCAST_GPCPLL_DVFS2_DFS_EXT_STROBE_BIT);

 nvkm_mask(device, GPCPLL_DVFS0,
    GPCPLL_DVFS0_DFS_COEFF_MASK | GPCPLL_DVFS0_DFS_DET_MAX_MASK,
    dvfs->dfs_coeff << GPCPLL_DVFS0_DFS_COEFF_SHIFT |
    dvfs->dfs_det_max << GPCPLL_DVFS0_DFS_DET_MAX_SHIFT);

 udelay(1);
 nvkm_mask(device, GPC_BCAST_GPCPLL_DVFS2,
    GPC_BCAST_GPCPLL_DVFS2_DFS_EXT_STROBE_BIT, 0);

 gm20b_dvfs_program_ext_cal(clk, dvfs->dfs_ext_cal);
}
