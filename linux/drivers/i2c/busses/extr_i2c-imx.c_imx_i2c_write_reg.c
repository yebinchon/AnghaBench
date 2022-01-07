
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx_i2c_struct {TYPE_1__* hwdata; scalar_t__ base; } ;
struct TYPE_2__ {unsigned int regshift; } ;


 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void imx_i2c_write_reg(unsigned int val,
  struct imx_i2c_struct *i2c_imx, unsigned int reg)
{
 writeb(val, i2c_imx->base + (reg << i2c_imx->hwdata->regshift));
}
