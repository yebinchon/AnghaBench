
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpc_i2c {scalar_t__ base; } ;


 scalar_t__ MPC_I2C_CR ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void writeccr(struct mpc_i2c *i2c, u32 x)
{
 writeb(x, i2c->base + MPC_I2C_CR);
}
