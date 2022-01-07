
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfc_multi {int dummy; } ;


 int cpld_set_reg (struct hfc_multi*,int) ;
 int disablepcibridge (struct hfc_multi*) ;
 int enablepcibridge (struct hfc_multi*) ;
 unsigned char readpcibridge (struct hfc_multi*,int) ;
 int vpm_write_address (struct hfc_multi*,unsigned short) ;

__attribute__((used)) static inline unsigned char
vpm_in(struct hfc_multi *c, int which, unsigned short addr)
{
 unsigned char res;

 vpm_write_address(c, addr);

 if (!which)
  cpld_set_reg(c, 2);
 else
  cpld_set_reg(c, 3);

 enablepcibridge(c);
 res = readpcibridge(c, 1);
 disablepcibridge(c);

 cpld_set_reg(c, 0);

 return res;
}
