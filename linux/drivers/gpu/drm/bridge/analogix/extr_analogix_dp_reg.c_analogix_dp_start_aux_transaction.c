
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct analogix_dp_device {int dev; scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_AUX_CH_CTL_2 ;
 scalar_t__ ANALOGIX_DP_AUX_CH_STA ;
 scalar_t__ ANALOGIX_DP_INT_STA ;
 int AUX_EN ;
 int AUX_ERR ;
 int AUX_STATUS_MASK ;
 int DP_TIMEOUT_LOOP_COUNT ;
 int EREMOTEIO ;
 int ETIMEDOUT ;
 int RPLY_RECEIV ;
 int dev_err (int ,char*,...) ;
 int readl (scalar_t__) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

int analogix_dp_start_aux_transaction(struct analogix_dp_device *dp)
{
 int reg;
 int retval = 0;
 int timeout_loop = 0;


 reg = readl(dp->reg_base + ANALOGIX_DP_AUX_CH_CTL_2);
 reg |= AUX_EN;
 writel(reg, dp->reg_base + ANALOGIX_DP_AUX_CH_CTL_2);


 reg = readl(dp->reg_base + ANALOGIX_DP_INT_STA);
 while (!(reg & RPLY_RECEIV)) {
  timeout_loop++;
  if (DP_TIMEOUT_LOOP_COUNT < timeout_loop) {
   dev_err(dp->dev, "AUX CH command reply failed!\n");
   return -ETIMEDOUT;
  }
  reg = readl(dp->reg_base + ANALOGIX_DP_INT_STA);
  usleep_range(10, 11);
 }


 writel(RPLY_RECEIV, dp->reg_base + ANALOGIX_DP_INT_STA);


 reg = readl(dp->reg_base + ANALOGIX_DP_INT_STA);
 if (reg & AUX_ERR) {
  writel(AUX_ERR, dp->reg_base + ANALOGIX_DP_INT_STA);
  return -EREMOTEIO;
 }


 reg = readl(dp->reg_base + ANALOGIX_DP_AUX_CH_STA);
 if ((reg & AUX_STATUS_MASK) != 0) {
  dev_err(dp->dev, "AUX CH error happens: %d\n\n",
   reg & AUX_STATUS_MASK);
  return -EREMOTEIO;
 }

 return retval;
}
