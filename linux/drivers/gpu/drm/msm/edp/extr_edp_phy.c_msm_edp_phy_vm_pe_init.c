
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edp_phy {scalar_t__ base; } ;


 scalar_t__ REG_EDP_PHY_GLB_MISC9 ;
 scalar_t__ REG_EDP_PHY_GLB_VM_CFG0 ;
 scalar_t__ REG_EDP_PHY_GLB_VM_CFG1 ;
 int edp_write (scalar_t__,int) ;

void msm_edp_phy_vm_pe_init(struct edp_phy *phy)
{
 edp_write(phy->base + REG_EDP_PHY_GLB_VM_CFG0, 0x3);
 edp_write(phy->base + REG_EDP_PHY_GLB_VM_CFG1, 0x64);
 edp_write(phy->base + REG_EDP_PHY_GLB_MISC9, 0x6c);
}
