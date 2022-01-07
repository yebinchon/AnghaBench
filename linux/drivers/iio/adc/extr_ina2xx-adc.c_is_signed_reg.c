
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int INA2XX_CURRENT ;
 unsigned int INA2XX_SHUNT_VOLTAGE ;

__attribute__((used)) static inline bool is_signed_reg(unsigned int reg)
{
 return (reg == INA2XX_SHUNT_VOLTAGE) || (reg == INA2XX_CURRENT);
}
