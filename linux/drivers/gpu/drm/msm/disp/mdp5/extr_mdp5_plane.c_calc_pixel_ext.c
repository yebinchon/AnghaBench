
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mdp_format {scalar_t__ is_yuv; } ;


 int COMP_MAX ;

__attribute__((used)) static void calc_pixel_ext(const struct mdp_format *format,
  uint32_t src, uint32_t dst, uint32_t phase_step[2],
  int pix_ext_edge1[COMP_MAX], int pix_ext_edge2[COMP_MAX],
  bool horz)
{
 bool scaling = format->is_yuv ? 1 : (src != dst);
 int i;
 for (i = 0; i < COMP_MAX; i++) {
  pix_ext_edge1[i] = 0;
  pix_ext_edge2[i] = scaling ? 1 : 0;
 }
}
