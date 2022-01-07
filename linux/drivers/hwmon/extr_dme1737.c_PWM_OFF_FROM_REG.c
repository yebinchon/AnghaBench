
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int PWM_OFF_FROM_REG(int reg, int ix)
{
 return (reg >> (ix + 5)) & 0x01;
}
