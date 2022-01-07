
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int status_used_mask; int bci_threshold_hi; unsigned int cob_size; int* status_ptr; } ;
typedef TYPE_1__ drm_savage_private_t ;


 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,int,int) ;
 int EBUSY ;
 unsigned int SAVAGE_BCI_FIFO_SIZE ;
 int SAVAGE_DEFAULT_USEC_TIMEOUT ;
 int mb () ;
 int udelay (int) ;

__attribute__((used)) static int
savage_bci_wait_fifo_shadow(drm_savage_private_t * dev_priv, unsigned int n)
{
 uint32_t mask = dev_priv->status_used_mask;
 uint32_t threshold = dev_priv->bci_threshold_hi;
 uint32_t status;
 int i;







 for (i = 0; i < SAVAGE_DEFAULT_USEC_TIMEOUT; i++) {
  mb();
  status = dev_priv->status_ptr[0];
  if ((status & mask) < threshold)
   return 0;
  udelay(1);
 }





 return -EBUSY;
}
