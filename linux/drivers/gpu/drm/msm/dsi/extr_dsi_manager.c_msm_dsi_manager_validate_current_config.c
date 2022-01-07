
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DBG (char*,int ) ;
 int IS_DUAL_DSI () ;
 int IS_MASTER_DSI_LINK (int ) ;

bool msm_dsi_manager_validate_current_config(u8 id)
{
 bool is_dual_dsi = IS_DUAL_DSI();







 if (is_dual_dsi && !IS_MASTER_DSI_LINK(id)) {
  DBG("Skip bridge registration for slave DSI->id: %d\n", id);
  return 0;
 }
 return 1;
}
