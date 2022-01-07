
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_i2c_bus {int dummy; } ;
struct hfi1_devdata {TYPE_1__* asic_data; } ;
struct TYPE_2__ {struct hfi1_i2c_bus* i2c_bus0; struct hfi1_i2c_bus* i2c_bus1; } ;


 int i2c_bus_write (struct hfi1_devdata*,struct hfi1_i2c_bus*,int,int,int,void*,int) ;

__attribute__((used)) static int __i2c_write(struct hfi1_pportdata *ppd, u32 target, int i2c_addr,
         int offset, void *bp, int len)
{
 struct hfi1_devdata *dd = ppd->dd;
 struct hfi1_i2c_bus *bus;
 u8 slave_addr;
 int offset_size;

 bus = target ? dd->asic_data->i2c_bus1 : dd->asic_data->i2c_bus0;
 slave_addr = (i2c_addr & 0xff) >> 1;
 offset_size = (i2c_addr >> 8) & 0x3;
 return i2c_bus_write(dd, bus, slave_addr, offset, offset_size, bp, len);
}
