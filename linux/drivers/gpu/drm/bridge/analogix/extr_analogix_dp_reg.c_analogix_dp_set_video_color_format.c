
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dynamic_range; int color_depth; int color_space; scalar_t__ ycbcr_coeff; } ;
struct analogix_dp_device {scalar_t__ reg_base; TYPE_1__ video_info; } ;


 scalar_t__ ANALOGIX_DP_VIDEO_CTL_2 ;
 scalar_t__ ANALOGIX_DP_VIDEO_CTL_3 ;
 int IN_BPC_SHIFT ;
 int IN_COLOR_F_SHIFT ;
 int IN_D_RANGE_SHIFT ;
 int IN_YC_COEFFI_ITU601 ;
 int IN_YC_COEFFI_ITU709 ;
 int IN_YC_COEFFI_MASK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void analogix_dp_set_video_color_format(struct analogix_dp_device *dp)
{
 u32 reg;


 reg = (dp->video_info.dynamic_range << IN_D_RANGE_SHIFT) |
  (dp->video_info.color_depth << IN_BPC_SHIFT) |
  (dp->video_info.color_space << IN_COLOR_F_SHIFT);
 writel(reg, dp->reg_base + ANALOGIX_DP_VIDEO_CTL_2);


 reg = readl(dp->reg_base + ANALOGIX_DP_VIDEO_CTL_3);
 reg &= ~IN_YC_COEFFI_MASK;
 if (dp->video_info.ycbcr_coeff)
  reg |= IN_YC_COEFFI_ITU709;
 else
  reg |= IN_YC_COEFFI_ITU601;
 writel(reg, dp->reg_base + ANALOGIX_DP_VIDEO_CTL_3);
}
