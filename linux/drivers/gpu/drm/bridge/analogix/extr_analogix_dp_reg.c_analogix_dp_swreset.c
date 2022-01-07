
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct analogix_dp_device {scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_TX_SW_RESET ;
 int RESET_DP_TX ;
 int writel (int ,scalar_t__) ;

void analogix_dp_swreset(struct analogix_dp_device *dp)
{
 writel(RESET_DP_TX, dp->reg_base + ANALOGIX_DP_TX_SW_RESET);
}
