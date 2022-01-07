
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int PWM_RR_EN_TO_REG(long val, int ix, int reg)
{
 int en = (ix == 1) ? 0x80 : 0x08;

 return val ? reg | en : reg & ~en;
}
