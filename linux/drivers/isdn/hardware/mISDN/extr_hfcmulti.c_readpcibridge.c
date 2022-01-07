
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfc_multi {scalar_t__ pci_iobase; } ;


 int HFC_outb (struct hfc_multi*,int ,int) ;
 int R_CTRL ;
 unsigned char inb (scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;

__attribute__((used)) static inline unsigned char
readpcibridge(struct hfc_multi *hc, unsigned char address)
{
 unsigned short cipv;
 unsigned char data;

 if (!hc->pci_iobase)
  return 0;


 HFC_outb(hc, R_CTRL, 0x4);

 if (address == 0)
  cipv = 0x4000;
 else
  cipv = 0x5800;



 outw(cipv, hc->pci_iobase + 4);
 data = inb(hc->pci_iobase);


 HFC_outb(hc, R_CTRL, 0x0);

 return data;
}
