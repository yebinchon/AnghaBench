
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct video_info {int color_fmt; int color_depth; } ;
struct drm_display_mode {int dummy; } ;


 int BT_601 ;






__attribute__((used)) static int cdn_dp_get_msa_misc(struct video_info *video,
          struct drm_display_mode *mode)
{
 u32 msa_misc;
 u8 val[2] = {0};

 switch (video->color_fmt) {
 case 132:
 case 128:
  val[0] = 0;
  break;

 case 129:
  val[0] = 6 + BT_601 * 8;
  break;
 case 130:
  val[0] = 5 + BT_601 * 8;
  break;
 case 131:
  val[0] = 5;
  break;
 };

 switch (video->color_depth) {
 case 6:
  val[1] = 0;
  break;
 case 8:
  val[1] = 1;
  break;
 case 10:
  val[1] = 2;
  break;
 case 12:
  val[1] = 3;
  break;
 case 16:
  val[1] = 4;
  break;
 };

 msa_misc = 2 * val[0] + 32 * val[1] +
     ((video->color_fmt == 128) ? (1 << 14) : 0);

 return msa_misc;
}
