
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int TEMP_FROM_REG(int reg, int res)
{
 return (reg * 1000) >> (res - 8);
}
