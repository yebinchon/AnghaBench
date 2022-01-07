
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ATOM_PPLIB_DISALLOW_ON_DC ;
 int ATOM_PPLIB_SINGLE_DISPLAY_ONLY ;
 int ATOM_PPLIB_SUPPORTS_VIDEO_PLAYBACK ;
 int pr_cont (char*) ;
 int printk (char*) ;

void r600_dpm_print_cap_info(u32 caps)
{
 printk("\tcaps:");
 if (caps & ATOM_PPLIB_SINGLE_DISPLAY_ONLY)
  pr_cont(" single_disp");
 if (caps & ATOM_PPLIB_SUPPORTS_VIDEO_PLAYBACK)
  pr_cont(" video");
 if (caps & ATOM_PPLIB_DISALLOW_ON_DC)
  pr_cont(" no_dc");
 pr_cont("\n");
}
