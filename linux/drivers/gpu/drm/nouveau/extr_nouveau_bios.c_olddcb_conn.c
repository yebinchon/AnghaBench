
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_device {int dummy; } ;


 int* olddcb_conntab (struct drm_device*) ;

u8 *
olddcb_conn(struct drm_device *dev, u8 idx)
{
 u8 *conntab = olddcb_conntab(dev);
 if (conntab && idx < conntab[2])
  return conntab + conntab[1] + (idx * conntab[3]);
 return ((void*)0);
}
