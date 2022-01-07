
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scx200_acb_iface {int dummy; } ;


 int ACBCTL1 ;
 int ACBCTL1_NMINTE ;
 int ACBCTL2 ;
 int ACBCTL2_ENABLE ;
 int ENXIO ;
 int inb (int ) ;
 int outb (int,int ) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int scx200_acb_probe(struct scx200_acb_iface *iface)
{
 u8 val;



 outb(0x70, ACBCTL2);

 if (inb(ACBCTL2) != 0x70) {
  pr_debug("ACBCTL2 readback failed\n");
  return -ENXIO;
 }

 outb(inb(ACBCTL1) | ACBCTL1_NMINTE, ACBCTL1);

 val = inb(ACBCTL1);
 if (val) {
  pr_debug("disabled, but ACBCTL1=0x%02x\n", val);
  return -ENXIO;
 }

 outb(inb(ACBCTL2) | ACBCTL2_ENABLE, ACBCTL2);

 outb(inb(ACBCTL1) | ACBCTL1_NMINTE, ACBCTL1);

 val = inb(ACBCTL1);
 if ((val & ACBCTL1_NMINTE) != ACBCTL1_NMINTE) {
  pr_debug("enabled, but NMINTE won't be set, ACBCTL1=0x%02x\n",
    val);
  return -ENXIO;
 }

 return 0;
}
