
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_vga {scalar_t__ mmio; } ;
struct i2c_msg {int len; scalar_t__ addr; } ;


 scalar_t__ DDC_ADDR ;
 int EINVAL ;
 scalar_t__ VGA_DEVICE_ADDR ;
 int zx_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static int zx_vga_i2c_write(struct zx_vga *vga, struct i2c_msg *msg)
{




 if ((msg->len != 1) || ((msg->addr != DDC_ADDR)))
  return -EINVAL;


 zx_writel(vga->mmio + VGA_DEVICE_ADDR, msg->addr);

 return 0;
}
