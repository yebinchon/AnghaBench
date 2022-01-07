
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ ASIC_QSFP1_IN ;
 scalar_t__ ASIC_QSFP2_IN ;

__attribute__((used)) static inline u32 i2c_in_csr(u32 bus_num)
{
 return bus_num ? ASIC_QSFP2_IN : ASIC_QSFP1_IN;
}
