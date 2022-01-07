
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_edac_pmd_ctx {unsigned int pmd; int edac; } ;
struct edac_device_ctl_info {struct xgene_edac_pmd_ctx* pvt_info; } ;


 int MAX_CPU_PER_PMD ;
 int PCPHPERRINTSTS ;
 unsigned int PMD0_MERR_MASK ;
 int xgene_edac_pcp_rd (int ,int ,unsigned int*) ;
 int xgene_edac_pmd_l1_check (struct edac_device_ctl_info*,int) ;
 int xgene_edac_pmd_l2_check (struct edac_device_ctl_info*) ;

__attribute__((used)) static void xgene_edac_pmd_check(struct edac_device_ctl_info *edac_dev)
{
 struct xgene_edac_pmd_ctx *ctx = edac_dev->pvt_info;
 unsigned int pcp_hp_stat;
 int i;

 xgene_edac_pcp_rd(ctx->edac, PCPHPERRINTSTS, &pcp_hp_stat);
 if (!((PMD0_MERR_MASK << ctx->pmd) & pcp_hp_stat))
  return;


 for (i = 0; i < MAX_CPU_PER_PMD; i++)
  xgene_edac_pmd_l1_check(edac_dev, i);


 xgene_edac_pmd_l2_check(edac_dev);
}
