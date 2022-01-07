
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_msg {int addr; } ;
struct axxia_i2c_dev {scalar_t__ base; } ;


 scalar_t__ MST_ADDR_1 ;
 scalar_t__ MST_ADDR_2 ;
 int i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 scalar_t__ i2c_m_rd (struct i2c_msg*) ;
 scalar_t__ i2c_m_ten (struct i2c_msg*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void axxia_i2c_set_addr(struct axxia_i2c_dev *idev, struct i2c_msg *msg)
{
 u32 addr_1, addr_2;

 if (i2c_m_ten(msg)) {




  addr_1 = 0xF0 | ((msg->addr >> 7) & 0x06);
  if (i2c_m_rd(msg))
   addr_1 |= 1;
  addr_2 = msg->addr & 0xFF;
 } else {




  addr_1 = i2c_8bit_addr_from_msg(msg);
  addr_2 = 0;
 }

 writel(addr_1, idev->base + MST_ADDR_1);
 writel(addr_2, idev->base + MST_ADDR_2);
}
