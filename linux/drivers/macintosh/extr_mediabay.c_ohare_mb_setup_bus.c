
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct media_bay_info {int dummy; } ;


 int ENODEV ;
 int MB_BIC (struct media_bay_info*,int ,int ) ;
 int MB_BIS (struct media_bay_info*,int ,int ) ;




 int OHARE_FCR ;
 int OH_BAY_FLOPPY_ENABLE ;
 int OH_BAY_IDE_ENABLE ;
 int OH_BAY_PCI_ENABLE ;
 int OH_FLOPPY_ENABLE ;
 int OH_IDE1_RESET_N ;

__attribute__((used)) static int
ohare_mb_setup_bus(struct media_bay_info* bay, u8 device_id)
{
 switch(device_id) {
  case 130:
  case 129:
   MB_BIS(bay, OHARE_FCR, OH_BAY_FLOPPY_ENABLE);
   MB_BIS(bay, OHARE_FCR, OH_FLOPPY_ENABLE);
   return 0;
  case 131:
   MB_BIC(bay, OHARE_FCR, OH_IDE1_RESET_N);
   MB_BIS(bay, OHARE_FCR, OH_BAY_IDE_ENABLE);
   return 0;
  case 128:
   MB_BIS(bay, OHARE_FCR, OH_BAY_PCI_ENABLE);
   return 0;
 }
 return -ENODEV;
}
