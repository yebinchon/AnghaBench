
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (int) ;
 int io_lock ;
 int outb (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u8 slidebar_mode_get(void)
{
 u8 res;
 unsigned long flags;

 spin_lock_irqsave(&io_lock, flags);
 outb(0xf7, 0xff29);
 outb(0x8b, 0xff2a);
 res = inb(0xff2b);
 spin_unlock_irqrestore(&io_lock, flags);

 return res;
}
