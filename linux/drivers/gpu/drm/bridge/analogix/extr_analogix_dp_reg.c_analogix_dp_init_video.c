
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_COMMON_INT_STA_1 ;
 scalar_t__ ANALOGIX_DP_SYS_CTL_1 ;
 scalar_t__ ANALOGIX_DP_SYS_CTL_2 ;
 scalar_t__ ANALOGIX_DP_SYS_CTL_3 ;
 scalar_t__ ANALOGIX_DP_VIDEO_CTL_8 ;
 int CHA_CRI (int) ;
 int CHA_CTRL ;
 int VID_CLK_CHG ;
 int VID_FORMAT_CHG ;
 int VID_HRES_TH (int) ;
 int VID_VRES_TH (int ) ;
 int VSYNC_DET ;
 int writel (int,scalar_t__) ;

void analogix_dp_init_video(struct analogix_dp_device *dp)
{
 u32 reg;

 reg = VSYNC_DET | VID_FORMAT_CHG | VID_CLK_CHG;
 writel(reg, dp->reg_base + ANALOGIX_DP_COMMON_INT_STA_1);

 reg = 0x0;
 writel(reg, dp->reg_base + ANALOGIX_DP_SYS_CTL_1);

 reg = CHA_CRI(4) | CHA_CTRL;
 writel(reg, dp->reg_base + ANALOGIX_DP_SYS_CTL_2);

 reg = 0x0;
 writel(reg, dp->reg_base + ANALOGIX_DP_SYS_CTL_3);

 reg = VID_HRES_TH(2) | VID_VRES_TH(0);
 writel(reg, dp->reg_base + ANALOGIX_DP_VIDEO_CTL_8);
}
