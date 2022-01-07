
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfc_multi {int dummy; } ;


 int cpld_write_reg (struct hfc_multi*,int,int) ;

__attribute__((used)) static inline void
vpm_write_address(struct hfc_multi *hc, unsigned short addr)
{
 cpld_write_reg(hc, 0, 0xff & addr);
 cpld_write_reg(hc, 1, 0x01 & (addr >> 8));
}
