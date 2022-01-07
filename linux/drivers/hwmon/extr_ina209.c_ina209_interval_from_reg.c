
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static int ina209_interval_from_reg(u16 reg)
{
 return 68 >> (15 - ((reg >> 3) & 0x0f));
}
