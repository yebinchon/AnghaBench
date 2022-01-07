
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int VBE_DISPI_IOPORT_DATA ;
 int VBE_DISPI_IOPORT_INDEX ;
 int outw (int ,int ) ;

__attribute__((used)) static inline void vbox_write_ioport(u16 index, u16 data)
{
 outw(index, VBE_DISPI_IOPORT_INDEX);
 outw(data, VBE_DISPI_IOPORT_DATA);
}
