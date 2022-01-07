
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int FAN_TPC_FROM_REG(int reg)
{
 return (reg & 0x20) ? 0 : 60 >> (reg & 0x03);
}
