
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bochs_device {scalar_t__ mmio; } ;


 int VBE_DISPI_IOPORT_DATA ;
 int VBE_DISPI_IOPORT_INDEX ;
 int inw (int ) ;
 int outw (int,int ) ;
 int readw (scalar_t__) ;

__attribute__((used)) static u16 bochs_dispi_read(struct bochs_device *bochs, u16 reg)
{
 u16 ret = 0;

 if (bochs->mmio) {
  int offset = 0x500 + (reg << 1);
  ret = readw(bochs->mmio + offset);
 } else {
  outw(reg, VBE_DISPI_IOPORT_INDEX);
  ret = inw(VBE_DISPI_IOPORT_DATA);
 }
 return ret;
}
