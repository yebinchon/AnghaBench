
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned LM93_GPI_FROM_REG(u8 reg)
{
 return ~reg & 0xff;
}
