
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icn8505_data {int client; } ;


 int ICN8505_PROG_I2C_ADDR ;
 int ICN8505_PROG_REG_ADDR_WIDTH ;
 int icn8505_write_xfer (int ,int ,int,int ,void const*,int,int) ;

__attribute__((used)) static int icn8505_write_prog_data(struct icn8505_data *icn8505, int reg,
       const void *buf, int len)
{
 return icn8505_write_xfer(icn8505->client, ICN8505_PROG_I2C_ADDR, reg,
      ICN8505_PROG_REG_ADDR_WIDTH, buf, len, 0);
}
