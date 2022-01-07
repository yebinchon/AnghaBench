
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpu_i2c_dev {scalar_t__ regs; } ;


 scalar_t__ I2C_MST_CNTL ;
 int I2C_MST_CNTL_GEN_START ;
 int gpu_i2c_check_status (struct gpu_i2c_dev*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int gpu_i2c_start(struct gpu_i2c_dev *i2cd)
{
 writel(I2C_MST_CNTL_GEN_START, i2cd->regs + I2C_MST_CNTL);
 return gpu_i2c_check_status(i2cd);
}
