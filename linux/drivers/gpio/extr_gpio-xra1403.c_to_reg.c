
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int to_reg(unsigned int reg, unsigned int offset)
{
 return reg + (offset > 7);
}
