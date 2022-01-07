
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc_i2c {scalar_t__ base; } ;


 int CCR_MEN ;
 scalar_t__ MPC_I2C_SR ;
 int writeb (int ,scalar_t__) ;
 int writeccr (struct mpc_i2c*,int ) ;

__attribute__((used)) static void mpc_i2c_start(struct mpc_i2c *i2c)
{

 writeb(0, i2c->base + MPC_I2C_SR);

 writeccr(i2c, CCR_MEN);
}
