
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edp_phy {scalar_t__ base; } ;


 scalar_t__ REG_EDP_PHY_GLB_VM_CFG0 ;
 scalar_t__ REG_EDP_PHY_GLB_VM_CFG1 ;
 int edp_write (scalar_t__,int ) ;

void msm_edp_phy_vm_pe_cfg(struct edp_phy *phy, u32 v0, u32 v1)
{
 edp_write(phy->base + REG_EDP_PHY_GLB_VM_CFG0, v0);
 edp_write(phy->base + REG_EDP_PHY_GLB_VM_CFG1, v1);
}
