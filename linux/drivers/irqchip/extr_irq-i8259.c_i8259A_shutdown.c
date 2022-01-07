
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIC_MASTER_IMR ;
 int PIC_SLAVE_IMR ;
 scalar_t__ i8259A_auto_eoi ;
 int outb (int,int ) ;

__attribute__((used)) static void i8259A_shutdown(void)
{




 if (i8259A_auto_eoi >= 0) {
  outb(0xff, PIC_MASTER_IMR);
  outb(0xff, PIC_SLAVE_IMR);
 }
}
