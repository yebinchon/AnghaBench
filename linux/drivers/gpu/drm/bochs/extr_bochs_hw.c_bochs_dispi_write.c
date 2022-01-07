
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bochs_device {scalar_t__ mmio; } ;


 int VBE_DISPI_IOPORT_DATA ;
 int VBE_DISPI_IOPORT_INDEX ;
 int outw (int,int ) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void bochs_dispi_write(struct bochs_device *bochs, u16 reg, u16 val)
{
 if (bochs->mmio) {
  int offset = 0x500 + (reg << 1);
  writew(val, bochs->mmio + offset);
 } else {
  outw(reg, VBE_DISPI_IOPORT_INDEX);
  outw(val, VBE_DISPI_IOPORT_DATA);
 }
}
