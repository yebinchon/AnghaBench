
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_VIDEO_CTL_1 ;
 int HDCP_VIDEO_MUTE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void analogix_dp_enable_video_mute(struct analogix_dp_device *dp, bool enable)
{
 u32 reg;

 if (enable) {
  reg = readl(dp->reg_base + ANALOGIX_DP_VIDEO_CTL_1);
  reg |= HDCP_VIDEO_MUTE;
  writel(reg, dp->reg_base + ANALOGIX_DP_VIDEO_CTL_1);
 } else {
  reg = readl(dp->reg_base + ANALOGIX_DP_VIDEO_CTL_1);
  reg &= ~HDCP_VIDEO_MUTE;
  writel(reg, dp->reg_base + ANALOGIX_DP_VIDEO_CTL_1);
 }
}
