
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int usec_timeout; } ;
typedef TYPE_1__ drm_mga_private_t ;


 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*) ;
 int DRM_INFO (char*,int) ;
 int EBUSY ;
 int MGA_CRTC_INDEX ;
 int MGA_ENDPRDMASTS ;
 int MGA_ENGINE_IDLE_MASK ;
 int MGA_READ (int ) ;
 int MGA_STATUS ;
 int MGA_WRITE8 (int ,int ) ;
 int udelay (int) ;

int mga_do_wait_for_idle(drm_mga_private_t *dev_priv)
{
 u32 status = 0;
 int i;
 DRM_DEBUG("\n");

 for (i = 0; i < dev_priv->usec_timeout; i++) {
  status = MGA_READ(MGA_STATUS) & MGA_ENGINE_IDLE_MASK;
  if (status == MGA_ENDPRDMASTS) {
   MGA_WRITE8(MGA_CRTC_INDEX, 0);
   return 0;
  }
  udelay(1);
 }





 return -EBUSY;
}
