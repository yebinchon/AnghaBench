
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct davinci_i2c_dev {scalar_t__ base; } ;


 int readw_relaxed (scalar_t__) ;

__attribute__((used)) static inline u16 davinci_i2c_read_reg(struct davinci_i2c_dev *i2c_dev, int reg)
{
 return readw_relaxed(i2c_dev->base + reg);
}
