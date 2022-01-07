
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_i2c_bus {scalar_t__ base; int master_state; } ;


 int ASPEED_I2CD_M_STOP_CMD ;
 scalar_t__ ASPEED_I2C_CMD_REG ;
 int ASPEED_I2C_MASTER_STOP ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void aspeed_i2c_do_stop(struct aspeed_i2c_bus *bus)
{
 bus->master_state = ASPEED_I2C_MASTER_STOP;
 writel(ASPEED_I2CD_M_STOP_CMD, bus->base + ASPEED_I2C_CMD_REG);
}
