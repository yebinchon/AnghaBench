
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct media_bay_info {int dummy; } ;


 int ENODEV ;
 int HEATHROW_FCR ;
 int HRW_BAY_FLOPPY_ENABLE ;
 int HRW_BAY_IDE_ENABLE ;
 int HRW_BAY_PCI_ENABLE ;
 int HRW_IDE1_RESET_N ;
 int HRW_SWIM_ENABLE ;
 int MB_BIC (struct media_bay_info*,int ,int ) ;
 int MB_BIS (struct media_bay_info*,int ,int ) ;





__attribute__((used)) static int
heathrow_mb_setup_bus(struct media_bay_info* bay, u8 device_id)
{
 switch(device_id) {
  case 130:
  case 129:
   MB_BIS(bay, HEATHROW_FCR, HRW_BAY_FLOPPY_ENABLE);
   MB_BIS(bay, HEATHROW_FCR, HRW_SWIM_ENABLE);
   return 0;
  case 131:
   MB_BIC(bay, HEATHROW_FCR, HRW_IDE1_RESET_N);
   MB_BIS(bay, HEATHROW_FCR, HRW_BAY_IDE_ENABLE);
   return 0;
  case 128:
   MB_BIS(bay, HEATHROW_FCR, HRW_BAY_PCI_ENABLE);
   return 0;
 }
 return -ENODEV;
}
