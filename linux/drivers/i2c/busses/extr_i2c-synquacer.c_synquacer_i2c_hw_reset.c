
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synquacer_i2c {int pclkrate; scalar_t__ base; } ;


 scalar_t__ SYNQUACER_I2C_REG_CCR ;
 scalar_t__ SYNQUACER_I2C_REG_CSR ;
 int WAIT_PCLK (int,int ) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void synquacer_i2c_hw_reset(struct synquacer_i2c *i2c)
{

 writeb(0, i2c->base + SYNQUACER_I2C_REG_CCR);
 writeb(0, i2c->base + SYNQUACER_I2C_REG_CSR);

 WAIT_PCLK(100, i2c->pclkrate);
}
