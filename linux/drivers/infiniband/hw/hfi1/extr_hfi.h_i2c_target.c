
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ CR_I2C1 ;
 scalar_t__ CR_I2C2 ;

__attribute__((used)) static inline u32 i2c_target(u32 target)
{
 return target ? CR_I2C2 : CR_I2C1;
}
