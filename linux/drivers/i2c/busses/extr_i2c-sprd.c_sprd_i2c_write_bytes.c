
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct sprd_i2c {scalar_t__ base; } ;


 scalar_t__ I2C_TX ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void sprd_i2c_write_bytes(struct sprd_i2c *i2c_dev, u8 *buf, u32 len)
{
 u32 i;

 for (i = 0; i < len; i++)
  writeb(buf[i], i2c_dev->base + I2C_TX);
}
