
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nct6683_data {scalar_t__ addr; } ;


 scalar_t__ EC_DATA_REG ;
 scalar_t__ EC_INDEX_REG ;
 scalar_t__ EC_PAGE_REG ;
 int inb_p (scalar_t__) ;
 int outb_p (int,scalar_t__) ;

__attribute__((used)) static u16 nct6683_read(struct nct6683_data *data, u16 reg)
{
 int res;

 outb_p(0xff, data->addr + EC_PAGE_REG);
 outb_p(reg >> 8, data->addr + EC_PAGE_REG);
 outb_p(reg & 0xff, data->addr + EC_INDEX_REG);
 res = inb_p(data->addr + EC_DATA_REG);
 return res;
}
