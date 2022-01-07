
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct icn8505_data {TYPE_1__* client; } ;
struct TYPE_2__ {int addr; } ;


 int ICN8505_REG_ADDR_WIDTH ;
 int icn8505_write_xfer (TYPE_1__*,int ,int,int ,int *,int,int) ;

__attribute__((used)) static int icn8505_write_reg(struct icn8505_data *icn8505, int reg, u8 val)
{
 return icn8505_write_xfer(icn8505->client, icn8505->client->addr, reg,
      ICN8505_REG_ADDR_WIDTH, &val, 1, 0);
}
