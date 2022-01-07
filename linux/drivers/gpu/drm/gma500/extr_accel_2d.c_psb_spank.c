
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gatt_start; } ;
struct drm_psb_private {TYPE_1__ gtt; } ;


 int PSB_CR_BIF_CTRL ;
 int PSB_CR_BIF_TWOD_REQ_BASE ;
 int PSB_CR_SOFT_RESET ;
 int PSB_RSGX32 (int ) ;
 int PSB_WSGX32 (int,int ) ;
 int _PSB_CB_CTRL_CLEAR_FAULT ;
 int _PSB_CS_RESET_BIF_RESET ;
 int _PSB_CS_RESET_DPM_RESET ;
 int _PSB_CS_RESET_ISP_RESET ;
 int _PSB_CS_RESET_TA_RESET ;
 int _PSB_CS_RESET_TSP_RESET ;
 int _PSB_CS_RESET_TWOD_RESET ;
 int _PSB_CS_RESET_USE_RESET ;
 int msleep (int) ;
 int wmb () ;

void psb_spank(struct drm_psb_private *dev_priv)
{
 PSB_WSGX32(_PSB_CS_RESET_BIF_RESET | _PSB_CS_RESET_DPM_RESET |
  _PSB_CS_RESET_TA_RESET | _PSB_CS_RESET_USE_RESET |
  _PSB_CS_RESET_ISP_RESET | _PSB_CS_RESET_TSP_RESET |
  _PSB_CS_RESET_TWOD_RESET, PSB_CR_SOFT_RESET);
 PSB_RSGX32(PSB_CR_SOFT_RESET);

 msleep(1);

 PSB_WSGX32(0, PSB_CR_SOFT_RESET);
 wmb();
 PSB_WSGX32(PSB_RSGX32(PSB_CR_BIF_CTRL) | _PSB_CB_CTRL_CLEAR_FAULT,
     PSB_CR_BIF_CTRL);
 wmb();
 (void) PSB_RSGX32(PSB_CR_BIF_CTRL);

 msleep(1);
 PSB_WSGX32(PSB_RSGX32(PSB_CR_BIF_CTRL) & ~_PSB_CB_CTRL_CLEAR_FAULT,
     PSB_CR_BIF_CTRL);
 (void) PSB_RSGX32(PSB_CR_BIF_CTRL);
 PSB_WSGX32(dev_priv->gtt.gatt_start, PSB_CR_BIF_TWOD_REQ_BASE);
}
