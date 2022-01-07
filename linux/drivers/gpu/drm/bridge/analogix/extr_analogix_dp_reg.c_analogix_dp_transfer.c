
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_dp_aux_msg {int* buffer; int size; int request; int reply; int address; } ;
struct analogix_dp_device {scalar_t__ reg_base; int dev; } ;
typedef int ssize_t ;


 int ADDR_ONLY ;
 scalar_t__ ANALOGIX_DP_AUX_ADDR_15_8 ;
 scalar_t__ ANALOGIX_DP_AUX_ADDR_19_16 ;
 scalar_t__ ANALOGIX_DP_AUX_ADDR_7_0 ;
 scalar_t__ ANALOGIX_DP_AUX_CH_CTL_1 ;
 scalar_t__ ANALOGIX_DP_AUX_CH_CTL_2 ;
 scalar_t__ ANALOGIX_DP_AUX_CH_STA ;
 scalar_t__ ANALOGIX_DP_AUX_RX_COMM ;
 scalar_t__ ANALOGIX_DP_BUFFER_DATA_CTL ;
 scalar_t__ ANALOGIX_DP_BUF_DATA_0 ;
 scalar_t__ ANALOGIX_DP_INT_STA ;
 int AUX_ADDR_15_8 (int ) ;
 int AUX_ADDR_19_16 (int ) ;
 int AUX_ADDR_7_0 (int ) ;
 int AUX_EN ;
 int AUX_ERR ;
 int AUX_LENGTH (int) ;
 int AUX_RX_COMM_AUX_DEFER ;
 int AUX_RX_COMM_I2C_DEFER ;
 int AUX_STATUS_MASK ;
 int AUX_TX_COMM_DP_TRANSACTION ;
 int AUX_TX_COMM_I2C_TRANSACTION ;
 int AUX_TX_COMM_MOT ;
 int AUX_TX_COMM_READ ;
 int AUX_TX_COMM_WRITE ;
 int BUF_CLR ;
 int DP_AUX_I2C_MOT ;

 int DP_AUX_I2C_REPLY_ACK ;
 int DP_AUX_I2C_REPLY_DEFER ;


 int DP_AUX_NATIVE_REPLY_ACK ;
 int DP_AUX_NATIVE_REPLY_DEFER ;

 int E2BIG ;
 int EBUSY ;
 int EINVAL ;
 int EREMOTEIO ;
 int RPLY_RECEIV ;
 scalar_t__ WARN_ON (int) ;
 int analogix_dp_init_aux (struct analogix_dp_device*) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,int,int) ;
 int readl (scalar_t__) ;
 int readx_poll_timeout (int (*) (scalar_t__),scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
        struct drm_dp_aux_msg *msg)
{
 u32 reg;
 u32 status_reg;
 u8 *buffer = msg->buffer;
 unsigned int i;
 int num_transferred = 0;
 int ret;


 if (WARN_ON(msg->size > 16))
  return -E2BIG;


 reg = BUF_CLR;
 writel(reg, dp->reg_base + ANALOGIX_DP_BUFFER_DATA_CTL);

 switch (msg->request & ~DP_AUX_I2C_MOT) {
 case 130:
  reg = AUX_TX_COMM_WRITE | AUX_TX_COMM_I2C_TRANSACTION;
  if (msg->request & DP_AUX_I2C_MOT)
   reg |= AUX_TX_COMM_MOT;
  break;

 case 131:
  reg = AUX_TX_COMM_READ | AUX_TX_COMM_I2C_TRANSACTION;
  if (msg->request & DP_AUX_I2C_MOT)
   reg |= AUX_TX_COMM_MOT;
  break;

 case 128:
  reg = AUX_TX_COMM_WRITE | AUX_TX_COMM_DP_TRANSACTION;
  break;

 case 129:
  reg = AUX_TX_COMM_READ | AUX_TX_COMM_DP_TRANSACTION;
  break;

 default:
  return -EINVAL;
 }

 reg |= AUX_LENGTH(msg->size);
 writel(reg, dp->reg_base + ANALOGIX_DP_AUX_CH_CTL_1);


 reg = AUX_ADDR_7_0(msg->address);
 writel(reg, dp->reg_base + ANALOGIX_DP_AUX_ADDR_7_0);
 reg = AUX_ADDR_15_8(msg->address);
 writel(reg, dp->reg_base + ANALOGIX_DP_AUX_ADDR_15_8);
 reg = AUX_ADDR_19_16(msg->address);
 writel(reg, dp->reg_base + ANALOGIX_DP_AUX_ADDR_19_16);

 if (!(msg->request & 131)) {
  for (i = 0; i < msg->size; i++) {
   reg = buffer[i];
   writel(reg, dp->reg_base + ANALOGIX_DP_BUF_DATA_0 +
          4 * i);
   num_transferred++;
  }
 }


 reg = AUX_EN;


 if (msg->size < 1)
  reg |= ADDR_ONLY;

 writel(reg, dp->reg_base + ANALOGIX_DP_AUX_CH_CTL_2);

 ret = readx_poll_timeout(readl, dp->reg_base + ANALOGIX_DP_AUX_CH_CTL_2,
     reg, !(reg & AUX_EN), 25, 500 * 1000);
 if (ret) {
  dev_err(dp->dev, "AUX CH enable timeout!\n");
  goto aux_error;
 }



 ret = readx_poll_timeout(readl, dp->reg_base + ANALOGIX_DP_INT_STA,
     reg, reg & RPLY_RECEIV, 10, 20 * 1000);
 if (ret) {
  dev_err(dp->dev, "AUX CH cmd reply timeout!\n");
  goto aux_error;
 }


 writel(RPLY_RECEIV, dp->reg_base + ANALOGIX_DP_INT_STA);


 reg = readl(dp->reg_base + ANALOGIX_DP_INT_STA);
 status_reg = readl(dp->reg_base + ANALOGIX_DP_AUX_CH_STA);
 if ((reg & AUX_ERR) || (status_reg & AUX_STATUS_MASK)) {
  writel(AUX_ERR, dp->reg_base + ANALOGIX_DP_INT_STA);

  dev_warn(dp->dev, "AUX CH error happened: %#x (%d)\n",
    status_reg & AUX_STATUS_MASK, !!(reg & AUX_ERR));
  goto aux_error;
 }

 if (msg->request & 131) {
  for (i = 0; i < msg->size; i++) {
   reg = readl(dp->reg_base + ANALOGIX_DP_BUF_DATA_0 +
        4 * i);
   buffer[i] = (unsigned char)reg;
   num_transferred++;
  }
 }


 reg = readl(dp->reg_base + ANALOGIX_DP_AUX_RX_COMM);
 if (reg == AUX_RX_COMM_AUX_DEFER)
  msg->reply = DP_AUX_NATIVE_REPLY_DEFER;
 else if (reg == AUX_RX_COMM_I2C_DEFER)
  msg->reply = DP_AUX_I2C_REPLY_DEFER;
 else if ((msg->request & ~DP_AUX_I2C_MOT) == 130 ||
   (msg->request & ~DP_AUX_I2C_MOT) == 131)
  msg->reply = DP_AUX_I2C_REPLY_ACK;
 else if ((msg->request & ~DP_AUX_I2C_MOT) == 128 ||
   (msg->request & ~DP_AUX_I2C_MOT) == 129)
  msg->reply = DP_AUX_NATIVE_REPLY_ACK;

 return num_transferred > 0 ? num_transferred : -EBUSY;

aux_error:

 analogix_dp_init_aux(dp);

 return -EREMOTEIO;
}
