
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct icn8505_data {int client; } ;


 int ICN8505_PROG_I2C_ADDR ;
 int ICN8505_PROG_REG_ADDR_WIDTH ;
 int icn8505_write_xfer (int ,int ,int,int ,int *,int,int) ;

__attribute__((used)) static int icn8505_write_prog_reg(struct icn8505_data *icn8505, int reg, u8 val)
{
 return icn8505_write_xfer(icn8505->client, ICN8505_PROG_I2C_ADDR, reg,
      ICN8505_PROG_REG_ADDR_WIDTH, &val, 1, 0);
}
