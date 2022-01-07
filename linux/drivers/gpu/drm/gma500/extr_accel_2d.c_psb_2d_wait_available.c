
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct drm_psb_private {int dummy; } ;


 int EIO ;
 unsigned long HZ ;
 int PSB_CR_2D_SOCIF ;
 unsigned int PSB_RSGX32 (int ) ;
 unsigned long jiffies ;
 int psb_spank (struct drm_psb_private*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int psb_2d_wait_available(struct drm_psb_private *dev_priv,
     unsigned size)
{
 uint32_t avail = PSB_RSGX32(PSB_CR_2D_SOCIF);
 unsigned long t = jiffies + HZ;

 while (avail < size) {
  avail = PSB_RSGX32(PSB_CR_2D_SOCIF);
  if (time_after(jiffies, t)) {
   psb_spank(dev_priv);
   return -EIO;
  }
 }
 return 0;
}
