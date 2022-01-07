
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int FAN_FROM_REG(int reg, int tpc)
{
 if (tpc)
  return tpc * reg;
 else
  return (reg == 0 || reg == 0xffff) ? 0 : 90000 * 60 / reg;
}
