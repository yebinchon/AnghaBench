
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scx200_acb_iface {int dummy; } ;


 int ACBADDR ;
 int ACBCST ;
 int ACBCST_BB ;
 int ACBCTL1 ;
 int ACBCTL1_NMINTE ;
 int ACBCTL1_STASTRE ;
 int ACBCTL1_STOP ;
 int ACBCTL2 ;
 int ACBCTL2_ENABLE ;
 int ACBST ;
 int ACBST_BER ;
 int ACBST_NEGACK ;
 int ACBST_STASTR ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static void scx200_acb_reset(struct scx200_acb_iface *iface)
{


 outb(0x70, ACBCTL2);

 outb(0, ACBCTL1);

 outb(0, ACBADDR);

 outb(inb(ACBCTL2) | ACBCTL2_ENABLE, ACBCTL2);

 outb(inb(ACBCTL1) & ~(ACBCTL1_STASTRE | ACBCTL1_NMINTE), ACBCTL1);

 outb(inb(ACBCTL1) | ACBCTL1_STOP, ACBCTL1);

 outb(ACBST_BER | ACBST_NEGACK | ACBST_STASTR, ACBST);

 outb(inb(ACBCST) | ACBCST_BB, ACBCST);
}
