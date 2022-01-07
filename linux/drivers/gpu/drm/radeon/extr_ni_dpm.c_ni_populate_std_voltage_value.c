
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct radeon_device {int dummy; } ;
struct TYPE_3__ {int value; int index; } ;
typedef TYPE_1__ NISLANDS_SMC_VOLTAGE_VALUE ;


 int cpu_to_be16 (int ) ;

__attribute__((used)) static void ni_populate_std_voltage_value(struct radeon_device *rdev,
       u16 value, u8 index,
       NISLANDS_SMC_VOLTAGE_VALUE *voltage)
{
 voltage->index = index;
 voltage->value = cpu_to_be16(value);
}
