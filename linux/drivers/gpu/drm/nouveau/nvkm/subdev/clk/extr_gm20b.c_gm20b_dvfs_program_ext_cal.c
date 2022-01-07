
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct gm20b_clk {TYPE_3__ base; } ;


 int BIT (int) ;
 scalar_t__ DFS_DET_RANGE ;
 int GPCPLL_DVFS1 ;
 int GPC_BCAST_GPCPLL_DVFS2 ;
 int MASK (scalar_t__) ;
 int nvkm_mask (struct nvkm_device*,int ,int ,int) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void
gm20b_dvfs_program_ext_cal(struct gm20b_clk *clk, u32 dfs_det_cal)
{
 struct nvkm_device *device = clk->base.base.subdev.device;
 u32 val;

 nvkm_mask(device, GPC_BCAST_GPCPLL_DVFS2, MASK(DFS_DET_RANGE + 1),
    dfs_det_cal);
 udelay(1);

 val = nvkm_rd32(device, GPCPLL_DVFS1);
 if (!(val & BIT(25))) {

  val |= BIT(25) | BIT(16);
  nvkm_wr32(device, GPCPLL_DVFS1, val);
 }
}
