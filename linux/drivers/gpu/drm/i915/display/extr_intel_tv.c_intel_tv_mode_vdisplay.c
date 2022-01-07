
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tv_mode {int nbr_end; scalar_t__ progressive; } ;



__attribute__((used)) static int
intel_tv_mode_vdisplay(const struct tv_mode *tv_mode)
{
 if (tv_mode->progressive)
  return tv_mode->nbr_end + 1;
 else
  return 2 * (tv_mode->nbr_end + 1);
}
