
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s16 ;



__attribute__((used)) static inline u8 ALARMS_FROM_REG(s16 reg)
{
 return reg & 0x0007;
}
