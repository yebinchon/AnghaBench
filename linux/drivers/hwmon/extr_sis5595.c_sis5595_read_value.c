
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sis5595_data {int lock; scalar_t__ addr; } ;


 scalar_t__ SIS5595_ADDR_REG_OFFSET ;
 scalar_t__ SIS5595_DATA_REG_OFFSET ;
 int inb_p (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb_p (int ,scalar_t__) ;

__attribute__((used)) static int sis5595_read_value(struct sis5595_data *data, u8 reg)
{
 int res;

 mutex_lock(&data->lock);
 outb_p(reg, data->addr + SIS5595_ADDR_REG_OFFSET);
 res = inb_p(data->addr + SIS5595_DATA_REG_OFFSET);
 mutex_unlock(&data->lock);
 return res;
}
