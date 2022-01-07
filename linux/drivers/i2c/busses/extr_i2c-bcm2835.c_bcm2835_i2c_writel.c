
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bcm2835_i2c_dev {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void bcm2835_i2c_writel(struct bcm2835_i2c_dev *i2c_dev,
          u32 reg, u32 val)
{
 writel(val, i2c_dev->regs + reg);
}
