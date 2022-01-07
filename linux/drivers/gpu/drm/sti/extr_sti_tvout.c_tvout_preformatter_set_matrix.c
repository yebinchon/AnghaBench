
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sti_tvout {int dummy; } ;
struct drm_display_mode {scalar_t__ vdisplay; } ;


 scalar_t__ TVO_CSC_AUX_M0 ;
 scalar_t__ TVO_CSC_MAIN_M0 ;
 scalar_t__ TVO_MIN_HD_HEIGHT ;
 int * rgb_to_ycbcr_601 ;
 int * rgb_to_ycbcr_709 ;
 int tvout_write (struct sti_tvout*,int const,scalar_t__) ;

__attribute__((used)) static void tvout_preformatter_set_matrix(struct sti_tvout *tvout,
       struct drm_display_mode *mode)
{
 unsigned int i;
 const u32 *pf_matrix;

 if (mode->vdisplay >= TVO_MIN_HD_HEIGHT)
  pf_matrix = rgb_to_ycbcr_709;
 else
  pf_matrix = rgb_to_ycbcr_601;

 for (i = 0; i < 8; i++) {
  tvout_write(tvout, *(pf_matrix + i),
       TVO_CSC_MAIN_M0 + (i * 4));
  tvout_write(tvout, *(pf_matrix + i),
       TVO_CSC_AUX_M0 + (i * 4));
 }
}
