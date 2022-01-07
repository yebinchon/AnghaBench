
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct davinci_i2c_dev {scalar_t__ base; } ;


 int writew_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void davinci_i2c_write_reg(struct davinci_i2c_dev *i2c_dev,
      int reg, u16 val)
{
 writew_relaxed(val, i2c_dev->base + reg);
}
