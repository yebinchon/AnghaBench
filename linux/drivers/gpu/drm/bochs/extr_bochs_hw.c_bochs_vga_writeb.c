
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct bochs_device {scalar_t__ mmio; } ;


 scalar_t__ WARN_ON (int) ;
 int outb (int ,int) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void bochs_vga_writeb(struct bochs_device *bochs, u16 ioport, u8 val)
{
 if (WARN_ON(ioport < 0x3c0 || ioport > 0x3df))
  return;

 if (bochs->mmio) {
  int offset = ioport - 0x3c0 + 0x400;
  writeb(val, bochs->mmio + offset);
 } else {
  outb(val, ioport);
 }
}
