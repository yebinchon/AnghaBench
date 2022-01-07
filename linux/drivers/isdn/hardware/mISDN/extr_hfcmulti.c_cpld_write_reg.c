
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfc_multi {int dummy; } ;


 int cpld_set_reg (struct hfc_multi*,unsigned char) ;
 int disablepcibridge (struct hfc_multi*) ;
 int enablepcibridge (struct hfc_multi*) ;
 int writepcibridge (struct hfc_multi*,int,unsigned char) ;

__attribute__((used)) static inline void
cpld_write_reg(struct hfc_multi *hc, unsigned char reg, unsigned char val)
{
 cpld_set_reg(hc, reg);

 enablepcibridge(hc);
 writepcibridge(hc, 1, val);
 disablepcibridge(hc);

 return;
}
