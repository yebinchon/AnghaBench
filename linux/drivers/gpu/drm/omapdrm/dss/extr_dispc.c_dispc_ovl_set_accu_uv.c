
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct dispc_device {int dummy; } ;
typedef int s8 ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int BUG () ;







 int DRM_MODE_ROTATE_MASK ;
 int dispc_ovl_set_vid_accu2_0 (struct dispc_device*,int,int,int) ;
 int dispc_ovl_set_vid_accu2_1 (struct dispc_device*,int,int,int) ;

__attribute__((used)) static void dispc_ovl_set_accu_uv(struct dispc_device *dispc,
      enum omap_plane_id plane,
      u16 orig_width, u16 orig_height,
      u16 out_width, u16 out_height,
      bool ilace, u32 fourcc, u8 rotation)
{
 int h_accu2_0, h_accu2_1;
 int v_accu2_0, v_accu2_1;
 int chroma_hinc, chroma_vinc;
 int idx;

 struct accu {
  s8 h0_m, h0_n;
  s8 h1_m, h1_n;
  s8 v0_m, v0_n;
  s8 v1_m, v1_n;
 };

 const struct accu *accu_table;
 const struct accu *accu_val;

 static const struct accu accu_nv12[4] = {
  { 0, 1, 0, 1 , -1, 2, 0, 1 },
  { 1, 2, -3, 4 , 0, 1, 0, 1 },
  { -1, 1, 0, 1 , -1, 2, 0, 1 },
  { -1, 2, -1, 2 , -1, 1, 0, 1 },
 };

 static const struct accu accu_nv12_ilace[4] = {
  { 0, 1, 0, 1 , -3, 4, -1, 4 },
  { -1, 4, -3, 4 , 0, 1, 0, 1 },
  { -1, 1, 0, 1 , -1, 4, -3, 4 },
  { -3, 4, -3, 4 , -1, 1, 0, 1 },
 };

 static const struct accu accu_yuv[4] = {
  { 0, 1, 0, 1, 0, 1, 0, 1 },
  { 0, 1, 0, 1, 0, 1, 0, 1 },
  { -1, 1, 0, 1, 0, 1, 0, 1 },
  { 0, 1, 0, 1, -1, 1, 0, 1 },
 };


 switch (rotation & DRM_MODE_ROTATE_MASK) {
 default:
 case 131:
  idx = 0;
  break;
 case 128:
  idx = 3;
  break;
 case 130:
  idx = 2;
  break;
 case 129:
  idx = 1;
  break;
 }

 switch (fourcc) {
 case 134:
  if (ilace)
   accu_table = accu_nv12_ilace;
  else
   accu_table = accu_nv12;
  break;
 case 132:
 case 133:
  accu_table = accu_yuv;
  break;
 default:
  BUG();
  return;
 }

 accu_val = &accu_table[idx];

 chroma_hinc = 1024 * orig_width / out_width;
 chroma_vinc = 1024 * orig_height / out_height;

 h_accu2_0 = (accu_val->h0_m * chroma_hinc / accu_val->h0_n) % 1024;
 h_accu2_1 = (accu_val->h1_m * chroma_hinc / accu_val->h1_n) % 1024;
 v_accu2_0 = (accu_val->v0_m * chroma_vinc / accu_val->v0_n) % 1024;
 v_accu2_1 = (accu_val->v1_m * chroma_vinc / accu_val->v1_n) % 1024;

 dispc_ovl_set_vid_accu2_0(dispc, plane, h_accu2_0, v_accu2_0);
 dispc_ovl_set_vid_accu2_1(dispc, plane, h_accu2_1, v_accu2_1);
}
