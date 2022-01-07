
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct msm_dsi_cfg_handler {scalar_t__ major; scalar_t__ minor; } ;


 int ARRAY_SIZE (struct msm_dsi_cfg_handler*) ;
 struct msm_dsi_cfg_handler* dsi_cfg_handlers ;

const struct msm_dsi_cfg_handler *msm_dsi_cfg_get(u32 major, u32 minor)
{
 const struct msm_dsi_cfg_handler *cfg_hnd = ((void*)0);
 int i;

 for (i = ARRAY_SIZE(dsi_cfg_handlers) - 1; i >= 0; i--) {
  if ((dsi_cfg_handlers[i].major == major) &&
   (dsi_cfg_handlers[i].minor == minor)) {
   cfg_hnd = &dsi_cfg_handlers[i];
   break;
  }
 }

 return cfg_hnd;
}
