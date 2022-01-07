
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ LTC2945_SENSE_H ;

__attribute__((used)) static inline bool is_power_reg(u8 reg)
{
 return reg < LTC2945_SENSE_H;
}
