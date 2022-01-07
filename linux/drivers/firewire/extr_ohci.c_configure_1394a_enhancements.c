
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_ohci {int quirks; } ;


 int OHCI1394_HCControlClear ;
 int OHCI1394_HCControlSet ;
 int OHCI1394_HCControl_aPhyEnhanceEnable ;
 int OHCI1394_HCControl_programPhyEnable ;
 int PHY_ENABLE_ACCEL ;
 int PHY_ENABLE_MULTI ;
 int PHY_EXTENDED_REGISTERS ;
 int QUIRK_NO_1394A ;
 int read_paged_phy_reg (struct fw_ohci*,int,int) ;
 int read_phy_reg (struct fw_ohci*,int) ;
 int reg_read (struct fw_ohci*,int) ;
 int reg_write (struct fw_ohci*,int,int) ;
 int update_phy_reg (struct fw_ohci*,int,int,int) ;

__attribute__((used)) static int configure_1394a_enhancements(struct fw_ohci *ohci)
{
 bool enable_1394a;
 int ret, clear, set, offset;


 if (!(reg_read(ohci, OHCI1394_HCControlSet) &
       OHCI1394_HCControl_programPhyEnable))
  return 0;


 enable_1394a = 0;
 ret = read_phy_reg(ohci, 2);
 if (ret < 0)
  return ret;
 if ((ret & PHY_EXTENDED_REGISTERS) == PHY_EXTENDED_REGISTERS) {
  ret = read_paged_phy_reg(ohci, 1, 8);
  if (ret < 0)
   return ret;
  if (ret >= 1)
   enable_1394a = 1;
 }

 if (ohci->quirks & QUIRK_NO_1394A)
  enable_1394a = 0;


 if (enable_1394a) {
  clear = 0;
  set = PHY_ENABLE_ACCEL | PHY_ENABLE_MULTI;
 } else {
  clear = PHY_ENABLE_ACCEL | PHY_ENABLE_MULTI;
  set = 0;
 }
 ret = update_phy_reg(ohci, 5, clear, set);
 if (ret < 0)
  return ret;

 if (enable_1394a)
  offset = OHCI1394_HCControlSet;
 else
  offset = OHCI1394_HCControlClear;
 reg_write(ohci, offset, OHCI1394_HCControl_aPhyEnhanceEnable);


 reg_write(ohci, OHCI1394_HCControlClear,
    OHCI1394_HCControl_programPhyEnable);

 return 0;
}
