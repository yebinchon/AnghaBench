
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_device {int dummy; } ;


 int* ROMPTR (struct drm_device*,int) ;
 int* olddcb_table (struct drm_device*) ;

u8 *
olddcb_conntab(struct drm_device *dev)
{
 u8 *dcb = olddcb_table(dev);
 if (dcb && dcb[0] >= 0x30 && dcb[1] >= 0x16) {
  u8 *conntab = ROMPTR(dev, dcb[0x14]);
  if (conntab && conntab[0] >= 0x30 && conntab[0] <= 0x40)
   return conntab;
 }
 return ((void*)0);
}
