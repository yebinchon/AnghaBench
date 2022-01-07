
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_edac_pmd_ctx {int pmd; int edac; } ;
struct edac_device_ctl_info {scalar_t__ op_state; struct xgene_edac_pmd_ctx* pvt_info; } ;


 int MAX_CPU_PER_PMD ;
 scalar_t__ OP_RUNNING_INTERRUPT ;
 int PCPHPERRINTMSK ;
 int PMD0_MERR_MASK ;
 int xgene_edac_pcp_clrbits (int ,int ,int) ;
 int xgene_edac_pcp_setbits (int ,int ,int) ;
 int xgene_edac_pmd_cpu_hw_cfg (struct edac_device_ctl_info*,int) ;
 int xgene_edac_pmd_hw_cfg (struct edac_device_ctl_info*) ;

__attribute__((used)) static void xgene_edac_pmd_hw_ctl(struct edac_device_ctl_info *edac_dev,
      bool enable)
{
 struct xgene_edac_pmd_ctx *ctx = edac_dev->pvt_info;
 int i;


 if (edac_dev->op_state == OP_RUNNING_INTERRUPT) {
  if (enable)
   xgene_edac_pcp_clrbits(ctx->edac, PCPHPERRINTMSK,
            PMD0_MERR_MASK << ctx->pmd);
  else
   xgene_edac_pcp_setbits(ctx->edac, PCPHPERRINTMSK,
            PMD0_MERR_MASK << ctx->pmd);
 }

 if (enable) {
  xgene_edac_pmd_hw_cfg(edac_dev);


  for (i = 0; i < MAX_CPU_PER_PMD; i++)
   xgene_edac_pmd_cpu_hw_cfg(edac_dev, i);
 }
}
