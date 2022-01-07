
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int TEMP_HYST_FROM_REG(int reg, int ix)
{
 return (((ix == 1) ? reg : reg >> 4) & 0x0f) * 1000;
}
