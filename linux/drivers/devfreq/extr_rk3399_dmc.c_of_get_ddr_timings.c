
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dram_timing {int phy_lpddr4_odt; int phy_lpddr4_dq_drv; int phy_lpddr4_ck_cs_drv; int phy_lpddr4_ca_drv; int lpddr4_ca_odt; int lpddr4_dq_odt; int lpddr4_drv; int lpddr4_odt_dis_freq; int phy_lpddr3_odt; int phy_lpddr3_dq_drv; int phy_lpddr3_ca_drv; int lpddr3_odt; int lpddr3_drv; int lpddr3_odt_dis_freq; int phy_ddr3_odt; int phy_ddr3_dq_drv; int phy_ddr3_ca_drv; int ddr3_odt; int ddr3_drv; int ddr3_odt_dis_freq; int phy_dll_dis_freq; int dram_dll_dis_freq; int auto_pd_dis_freq; int standby_idle; int srpd_lite_idle; int sr_mc_gate_idle; int sr_idle; int pd_idle; int ddr3_speed_bin; } ;
struct device_node {int dummy; } ;


 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int of_get_ddr_timings(struct dram_timing *timing,
         struct device_node *np)
{
 int ret = 0;

 ret = of_property_read_u32(np, "rockchip,ddr3_speed_bin",
       &timing->ddr3_speed_bin);
 ret |= of_property_read_u32(np, "rockchip,pd_idle",
        &timing->pd_idle);
 ret |= of_property_read_u32(np, "rockchip,sr_idle",
        &timing->sr_idle);
 ret |= of_property_read_u32(np, "rockchip,sr_mc_gate_idle",
        &timing->sr_mc_gate_idle);
 ret |= of_property_read_u32(np, "rockchip,srpd_lite_idle",
        &timing->srpd_lite_idle);
 ret |= of_property_read_u32(np, "rockchip,standby_idle",
        &timing->standby_idle);
 ret |= of_property_read_u32(np, "rockchip,auto_pd_dis_freq",
        &timing->auto_pd_dis_freq);
 ret |= of_property_read_u32(np, "rockchip,dram_dll_dis_freq",
        &timing->dram_dll_dis_freq);
 ret |= of_property_read_u32(np, "rockchip,phy_dll_dis_freq",
        &timing->phy_dll_dis_freq);
 ret |= of_property_read_u32(np, "rockchip,ddr3_odt_dis_freq",
        &timing->ddr3_odt_dis_freq);
 ret |= of_property_read_u32(np, "rockchip,ddr3_drv",
        &timing->ddr3_drv);
 ret |= of_property_read_u32(np, "rockchip,ddr3_odt",
        &timing->ddr3_odt);
 ret |= of_property_read_u32(np, "rockchip,phy_ddr3_ca_drv",
        &timing->phy_ddr3_ca_drv);
 ret |= of_property_read_u32(np, "rockchip,phy_ddr3_dq_drv",
        &timing->phy_ddr3_dq_drv);
 ret |= of_property_read_u32(np, "rockchip,phy_ddr3_odt",
        &timing->phy_ddr3_odt);
 ret |= of_property_read_u32(np, "rockchip,lpddr3_odt_dis_freq",
        &timing->lpddr3_odt_dis_freq);
 ret |= of_property_read_u32(np, "rockchip,lpddr3_drv",
        &timing->lpddr3_drv);
 ret |= of_property_read_u32(np, "rockchip,lpddr3_odt",
        &timing->lpddr3_odt);
 ret |= of_property_read_u32(np, "rockchip,phy_lpddr3_ca_drv",
        &timing->phy_lpddr3_ca_drv);
 ret |= of_property_read_u32(np, "rockchip,phy_lpddr3_dq_drv",
        &timing->phy_lpddr3_dq_drv);
 ret |= of_property_read_u32(np, "rockchip,phy_lpddr3_odt",
        &timing->phy_lpddr3_odt);
 ret |= of_property_read_u32(np, "rockchip,lpddr4_odt_dis_freq",
        &timing->lpddr4_odt_dis_freq);
 ret |= of_property_read_u32(np, "rockchip,lpddr4_drv",
        &timing->lpddr4_drv);
 ret |= of_property_read_u32(np, "rockchip,lpddr4_dq_odt",
        &timing->lpddr4_dq_odt);
 ret |= of_property_read_u32(np, "rockchip,lpddr4_ca_odt",
        &timing->lpddr4_ca_odt);
 ret |= of_property_read_u32(np, "rockchip,phy_lpddr4_ca_drv",
        &timing->phy_lpddr4_ca_drv);
 ret |= of_property_read_u32(np, "rockchip,phy_lpddr4_ck_cs_drv",
        &timing->phy_lpddr4_ck_cs_drv);
 ret |= of_property_read_u32(np, "rockchip,phy_lpddr4_dq_drv",
        &timing->phy_lpddr4_dq_drv);
 ret |= of_property_read_u32(np, "rockchip,phy_lpddr4_odt",
        &timing->phy_lpddr4_odt);

 return ret;
}
