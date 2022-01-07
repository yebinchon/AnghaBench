
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct analogix_dp_device {scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_COMMON_INT_MASK_1 ;
 scalar_t__ ANALOGIX_DP_COMMON_INT_MASK_2 ;
 scalar_t__ ANALOGIX_DP_COMMON_INT_MASK_3 ;
 scalar_t__ ANALOGIX_DP_COMMON_INT_MASK_4 ;
 scalar_t__ ANALOGIX_DP_COMMON_INT_STA_1 ;
 scalar_t__ ANALOGIX_DP_COMMON_INT_STA_2 ;
 scalar_t__ ANALOGIX_DP_COMMON_INT_STA_3 ;
 scalar_t__ ANALOGIX_DP_COMMON_INT_STA_4 ;
 scalar_t__ ANALOGIX_DP_INT_CTL ;
 scalar_t__ ANALOGIX_DP_INT_STA ;
 scalar_t__ ANALOGIX_DP_INT_STA_MASK ;
 int INT_POL0 ;
 int INT_POL1 ;
 int writel (int,scalar_t__) ;

void analogix_dp_init_interrupt(struct analogix_dp_device *dp)
{

 writel(INT_POL1 | INT_POL0, dp->reg_base + ANALOGIX_DP_INT_CTL);


 writel(0xff, dp->reg_base + ANALOGIX_DP_COMMON_INT_STA_1);
 writel(0x4f, dp->reg_base + ANALOGIX_DP_COMMON_INT_STA_2);
 writel(0xe0, dp->reg_base + ANALOGIX_DP_COMMON_INT_STA_3);
 writel(0xe7, dp->reg_base + ANALOGIX_DP_COMMON_INT_STA_4);
 writel(0x63, dp->reg_base + ANALOGIX_DP_INT_STA);


 writel(0x00, dp->reg_base + ANALOGIX_DP_COMMON_INT_MASK_1);
 writel(0x00, dp->reg_base + ANALOGIX_DP_COMMON_INT_MASK_2);
 writel(0x00, dp->reg_base + ANALOGIX_DP_COMMON_INT_MASK_3);
 writel(0x00, dp->reg_base + ANALOGIX_DP_COMMON_INT_MASK_4);
 writel(0x00, dp->reg_base + ANALOGIX_DP_INT_STA_MASK);
}
