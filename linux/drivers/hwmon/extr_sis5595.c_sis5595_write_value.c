
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sis5595_data {int lock; scalar_t__ addr; } ;


 scalar_t__ SIS5595_ADDR_REG_OFFSET ;
 scalar_t__ SIS5595_DATA_REG_OFFSET ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb_p (int ,scalar_t__) ;

__attribute__((used)) static void sis5595_write_value(struct sis5595_data *data, u8 reg, u8 value)
{
 mutex_lock(&data->lock);
 outb_p(reg, data->addr + SIS5595_ADDR_REG_OFFSET);
 outb_p(value, data->addr + SIS5595_DATA_REG_OFFSET);
 mutex_unlock(&data->lock);
}
