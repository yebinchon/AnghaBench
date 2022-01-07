
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx_i2c_struct {TYPE_1__* hwdata; scalar_t__ base; } ;
struct TYPE_2__ {unsigned int regshift; } ;


 unsigned char readb (scalar_t__) ;

__attribute__((used)) static inline unsigned char imx_i2c_read_reg(struct imx_i2c_struct *i2c_imx,
  unsigned int reg)
{
 return readb(i2c_imx->base + (reg << i2c_imx->hwdata->regshift));
}
