
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfc_multi {int dummy; } ;


 unsigned short cpld_read_reg (struct hfc_multi*,int) ;

__attribute__((used)) static inline unsigned short
vpm_read_address(struct hfc_multi *c)
{
 unsigned short addr;
 unsigned short highbit;

 addr = cpld_read_reg(c, 0);
 highbit = cpld_read_reg(c, 1);

 addr = addr | (highbit << 8);

 return addr & 0x1ff;
}
