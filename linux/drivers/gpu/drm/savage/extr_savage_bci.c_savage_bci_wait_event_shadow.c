
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int* status_ptr; } ;
typedef TYPE_1__ drm_savage_private_t ;


 int DRM_ERROR (char*) ;
 int DRM_INFO (char*,int,int) ;
 int EBUSY ;
 int SAVAGE_EVENT_USEC_TIMEOUT ;
 int mb () ;
 int udelay (int) ;

__attribute__((used)) static int
savage_bci_wait_event_shadow(drm_savage_private_t * dev_priv, uint16_t e)
{
 uint32_t status;
 int i;

 for (i = 0; i < SAVAGE_EVENT_USEC_TIMEOUT; i++) {
  mb();
  status = dev_priv->status_ptr[1];
  if ((((status & 0xffff) - e) & 0xffff) <= 0x7fff ||
      (status & 0xffff) == 0)
   return 0;
  udelay(1);
 }






 return -EBUSY;
}
