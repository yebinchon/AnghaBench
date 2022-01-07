
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct analogix_dp_device {scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_CRC_CON ;
 int PSR_VID_CRC_ENABLE ;
 int writel (int ,scalar_t__) ;

void analogix_dp_enable_psr_crc(struct analogix_dp_device *dp)
{
 writel(PSR_VID_CRC_ENABLE, dp->reg_base + ANALOGIX_DP_CRC_CON);
}
