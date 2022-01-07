
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* PWM_RR ;

__attribute__((used)) static inline int PWM_RR_FROM_REG(int reg, int ix)
{
 int rr = (ix == 1) ? reg >> 4 : reg;

 return (rr & 0x08) ? PWM_RR[rr & 0x07] : 0;
}
