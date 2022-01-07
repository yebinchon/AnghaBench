
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct komeda_crtc {TYPE_1__* master; } ;
struct TYPE_2__ {scalar_t__ dual_link; } ;



__attribute__((used)) static unsigned long
komeda_calc_min_aclk_rate(struct komeda_crtc *kcrtc,
     unsigned long pxlclk)
{



 if (kcrtc->master->dual_link)
  return pxlclk * 2;
 else
  return pxlclk;
}
