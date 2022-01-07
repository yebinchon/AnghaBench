
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altr_i2c_dev {int msg_len; scalar_t__ base; } ;


 scalar_t__ ALTR_I2C_TFR_CMD ;
 int ALTR_I2C_TFR_CMD_STO ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void altr_i2c_transfer(struct altr_i2c_dev *idev, u32 data)
{

 if (idev->msg_len == 1)
  data |= ALTR_I2C_TFR_CMD_STO;
 if (idev->msg_len > 0)
  writel(data, idev->base + ALTR_I2C_TFR_CMD);
}
