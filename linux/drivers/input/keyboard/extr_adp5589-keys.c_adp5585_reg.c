
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* adp5585_reg_lut ;

__attribute__((used)) static unsigned char adp5585_reg(unsigned char reg)
{
 return adp5585_reg_lut[reg];
}
