
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct gpu_i2c_dev {scalar_t__ regs; } ;


 scalar_t__ I2C_MST_CNTL ;
 int I2C_MST_CNTL_BURST_SIZE_SHIFT ;
 int I2C_MST_CNTL_CMD_WRITE ;
 scalar_t__ I2C_MST_DATA ;
 int gpu_i2c_check_status (struct gpu_i2c_dev*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int gpu_i2c_write(struct gpu_i2c_dev *i2cd, u8 data)
{
 u32 val;

 writel(data, i2cd->regs + I2C_MST_DATA);

 val = I2C_MST_CNTL_CMD_WRITE | (1 << I2C_MST_CNTL_BURST_SIZE_SHIFT);
 writel(val, i2cd->regs + I2C_MST_CNTL);

 return gpu_i2c_check_status(i2cd);
}
