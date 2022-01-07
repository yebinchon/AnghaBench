
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_ohci {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 int OHCI1394_HCControlSet ;
 int OHCI1394_HCControl_softReset ;
 int msleep (int) ;
 int reg_read (struct fw_ohci*,int ) ;
 int reg_write (struct fw_ohci*,int ,int) ;

__attribute__((used)) static int software_reset(struct fw_ohci *ohci)
{
 u32 val;
 int i;

 reg_write(ohci, OHCI1394_HCControlSet, OHCI1394_HCControl_softReset);
 for (i = 0; i < 500; i++) {
  val = reg_read(ohci, OHCI1394_HCControlSet);
  if (!~val)
   return -ENODEV;

  if (!(val & OHCI1394_HCControl_softReset))
   return 0;

  msleep(1);
 }

 return -EBUSY;
}
