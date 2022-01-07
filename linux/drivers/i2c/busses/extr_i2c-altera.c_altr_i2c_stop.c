
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altr_i2c_dev {scalar_t__ base; } ;


 scalar_t__ ALTR_I2C_TFR_CMD ;
 int ALTR_I2C_TFR_CMD_STO ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void altr_i2c_stop(struct altr_i2c_dev *idev)
{
 writel(ALTR_I2C_TFR_CMD_STO, idev->base + ALTR_I2C_TFR_CMD);
}
