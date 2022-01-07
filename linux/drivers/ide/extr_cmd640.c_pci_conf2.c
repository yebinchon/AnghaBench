
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd640_lock ;
 int inb (int) ;
 int outb (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pci_conf2(void)
{
 unsigned long flags;

 spin_lock_irqsave(&cmd640_lock, flags);
 outb(0x00, 0xCFB);
 outb(0x00, 0xCF8);
 outb(0x00, 0xCFA);
 if (inb(0xCF8) == 0x00 && inb(0xCF8) == 0x00) {
  spin_unlock_irqrestore(&cmd640_lock, flags);
  return 1;
 }
 spin_unlock_irqrestore(&cmd640_lock, flags);
 return 0;
}
