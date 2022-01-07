
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lock; } ;


 int MLXPLAT_CPLD_LPC_REG_BASE_ADRR ;
 TYPE_1__* mlxcpld_led ;
 int mlxcpld_led_bus_access_func (int ,int,int,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mlxcpld_led_store_hw(u8 mask, u8 off, u8 vset)
{
 u8 nib, val;
 spin_lock(&mlxcpld_led->lock);
 mlxcpld_led_bus_access_func(MLXPLAT_CPLD_LPC_REG_BASE_ADRR, off, 1,
        &val);
 nib = (mask == 0xf0) ? vset : (vset << 4);
 val = (val & mask) | nib;
 mlxcpld_led_bus_access_func(MLXPLAT_CPLD_LPC_REG_BASE_ADRR, off, 0,
        &val);
 spin_unlock(&mlxcpld_led->lock);
}
