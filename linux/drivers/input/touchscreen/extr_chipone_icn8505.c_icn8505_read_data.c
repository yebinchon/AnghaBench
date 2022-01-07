
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icn8505_data {TYPE_1__* client; } ;
struct TYPE_2__ {int addr; } ;


 int ICN8505_REG_ADDR_WIDTH ;
 int icn8505_read_xfer (TYPE_1__*,int ,int,int ,void*,int,int) ;

__attribute__((used)) static int icn8505_read_data(struct icn8505_data *icn8505, int reg,
        void *buf, int len)
{
 return icn8505_read_xfer(icn8505->client, icn8505->client->addr, reg,
     ICN8505_REG_ADDR_WIDTH, buf, len, 0);
}
