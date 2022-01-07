
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_bay_info {int dummy; } ;


 int HEATHROW_FCR ;
 int HEATHROW_MBCR ;
 int HRW_BAY_DEV_MASK ;
 int HRW_BAY_POWER_N ;
 int HRW_BAY_RESET_N ;
 int HRW_IDE1_RESET_N ;
 int HRW_SWIM_ENABLE ;
 int MB_BIC (struct media_bay_info*,int ,int) ;
 int MB_BIS (struct media_bay_info*,int ,int) ;

__attribute__((used)) static void
heathrow_mb_power(struct media_bay_info* bay, int on_off)
{
 if (on_off) {

  MB_BIC(bay, HEATHROW_FCR, HRW_BAY_RESET_N);
  MB_BIC(bay, HEATHROW_FCR, HRW_BAY_POWER_N);
 } else {

  MB_BIC(bay, HEATHROW_FCR, HRW_BAY_DEV_MASK);
  MB_BIC(bay, HEATHROW_FCR, HRW_SWIM_ENABLE);

  MB_BIS(bay, HEATHROW_FCR, HRW_BAY_POWER_N);
  MB_BIS(bay, HEATHROW_FCR, HRW_BAY_RESET_N);
  MB_BIS(bay, HEATHROW_FCR, HRW_IDE1_RESET_N);
 }
 MB_BIC(bay, HEATHROW_MBCR, 0x00000F00);
}
