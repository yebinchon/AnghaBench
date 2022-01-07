
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_COMMON_INT_MASK_4 ;
 scalar_t__ ANALOGIX_DP_INT_STA_MASK ;
 int COMMON_INT_MASK_4 ;
 int INT_STA_MASK ;
 int writel (int ,scalar_t__) ;

void analogix_dp_unmute_hpd_interrupt(struct analogix_dp_device *dp)
{
 u32 reg;


 reg = COMMON_INT_MASK_4;
 writel(reg, dp->reg_base + ANALOGIX_DP_COMMON_INT_MASK_4);

 reg = INT_STA_MASK;
 writel(reg, dp->reg_base + ANALOGIX_DP_INT_STA_MASK);
}
