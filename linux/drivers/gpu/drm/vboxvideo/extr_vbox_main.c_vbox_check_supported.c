
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 int VBE_DISPI_INDEX_ID ;
 int VBE_DISPI_IOPORT_DATA ;
 scalar_t__ inw (int ) ;
 int vbox_write_ioport (int ,scalar_t__) ;

bool vbox_check_supported(u16 id)
{
 u16 dispi_id;

 vbox_write_ioport(VBE_DISPI_INDEX_ID, id);
 dispi_id = inw(VBE_DISPI_IOPORT_DATA);

 return dispi_id == id;
}
