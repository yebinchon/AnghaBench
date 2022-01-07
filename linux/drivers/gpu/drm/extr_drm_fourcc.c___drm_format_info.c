
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_format_info {scalar_t__ format; int depth; int num_planes; int hsub; int vsub; int has_alpha; int is_yuv; int cpp; int block_h; int block_w; int char_per_block; } ;


 unsigned int ARRAY_SIZE (struct drm_format_info const*) ;
const struct drm_format_info *__drm_format_info(u32 format)
{
 static const struct drm_format_info formats[] = {
  { .format = 196, .depth = 8, .num_planes = 1, .cpp = { 1, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 185, .depth = 8, .num_planes = 1, .cpp = { 1, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 210, .depth = 8, .num_planes = 1, .cpp = { 1, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 156, .depth = 0, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 162, .depth = 0, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 175, .depth = 0, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 200, .depth = 0, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 213, .depth = 0, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 218, .depth = 0, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 179, .depth = 0, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 204, .depth = 0, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 159, .depth = 15, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 165, .depth = 15, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 174, .depth = 15, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 199, .depth = 15, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 216, .depth = 15, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 221, .depth = 15, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 178, .depth = 15, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 203, .depth = 15, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 184, .depth = 16, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 209, .depth = 16, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 182, .depth = 24, .num_planes = 1, .cpp = { 3, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 207, .depth = 24, .num_planes = 1, .cpp = { 3, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 155, .depth = 24, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 161, .depth = 24, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 173, .depth = 24, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 198, .depth = 24, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 183, .depth = 24, .num_planes = 2, .cpp = { 2, 1, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 208, .depth = 24, .num_planes = 2, .cpp = { 2, 1, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 157, .depth = 30, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 163, .depth = 30, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 176, .depth = 30, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 201, .depth = 30, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 214, .depth = 30, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 219, .depth = 30, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 180, .depth = 30, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 205, .depth = 30, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 212, .depth = 32, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 217, .depth = 32, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 177, .depth = 32, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 202, .depth = 32, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 158, .depth = 0, .num_planes = 1, .cpp = { 8, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 164, .depth = 0, .num_planes = 1, .cpp = { 8, 0, 0 }, .hsub = 1, .vsub = 1 },
  { .format = 215, .depth = 0, .num_planes = 1, .cpp = { 8, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 220, .depth = 0, .num_planes = 1, .cpp = { 8, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 181, .depth = 32, .num_planes = 2, .cpp = { 3, 1, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 206, .depth = 32, .num_planes = 2, .cpp = { 3, 1, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 154, .depth = 32, .num_planes = 2, .cpp = { 4, 1, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 160, .depth = 32, .num_planes = 2, .cpp = { 4, 1, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 172, .depth = 32, .num_planes = 2, .cpp = { 4, 1, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 197, .depth = 32, .num_planes = 2, .cpp = { 4, 1, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1 },
  { .format = 141, .depth = 0, .num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 4, .vsub = 4, .is_yuv = 1 },
  { .format = 133, .depth = 0, .num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 4, .vsub = 4, .is_yuv = 1 },
  { .format = 140, .depth = 0, .num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 4, .vsub = 1, .is_yuv = 1 },
  { .format = 132, .depth = 0, .num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 4, .vsub = 1, .is_yuv = 1 },
  { .format = 139, .depth = 0, .num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 2, .vsub = 2, .is_yuv = 1 },
  { .format = 131, .depth = 0, .num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 2, .vsub = 2, .is_yuv = 1 },
  { .format = 136, .depth = 0, .num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 2, .vsub = 1, .is_yuv = 1 },
  { .format = 130, .depth = 0, .num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 2, .vsub = 1, .is_yuv = 1 },
  { .format = 135, .depth = 0, .num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 1, .vsub = 1, .is_yuv = 1 },
  { .format = 129, .depth = 0, .num_planes = 3, .cpp = { 1, 1, 1 }, .hsub = 1, .vsub = 1, .is_yuv = 1 },
  { .format = 195, .depth = 0, .num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 2, .is_yuv = 1 },
  { .format = 193, .depth = 0, .num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 2, .is_yuv = 1 },
  { .format = 194, .depth = 0, .num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 1, .is_yuv = 1 },
  { .format = 190, .depth = 0, .num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 2, .vsub = 1, .is_yuv = 1 },
  { .format = 192, .depth = 0, .num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 1, .vsub = 1, .is_yuv = 1 },
  { .format = 191, .depth = 0, .num_planes = 2, .cpp = { 1, 2, 0 }, .hsub = 1, .vsub = 1, .is_yuv = 1 },
  { .format = 134, .depth = 0, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 2, .vsub = 1, .is_yuv = 1 },
  { .format = 128, .depth = 0, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 2, .vsub = 1, .is_yuv = 1 },
  { .format = 171, .depth = 0, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 2, .vsub = 1, .is_yuv = 1 },
  { .format = 168, .depth = 0, .num_planes = 1, .cpp = { 2, 0, 0 }, .hsub = 2, .vsub = 1, .is_yuv = 1 },
  { .format = 150, .depth = 0, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1, .is_yuv = 1 },
  { .format = 169, .depth = 0, .num_planes = 1, .cpp = { 3, 0, 0 }, .hsub = 1, .vsub = 1, .is_yuv = 1 },
  { .format = 211, .depth = 0, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1, .is_yuv = 1 },
  { .format = 147, .depth = 0, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 2, .vsub = 1, .is_yuv = 1 },
  { .format = 146, .depth = 0, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 2, .vsub = 1, .is_yuv = 1 },
  { .format = 145, .depth = 0, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 2, .vsub = 1, .is_yuv = 1 },
  { .format = 144, .depth = 0, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1, .is_yuv = 1 },
  { .format = 143, .depth = 0, .num_planes = 1, .cpp = { 8, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1, .is_yuv = 1 },
  { .format = 142, .depth = 0, .num_planes = 1, .cpp = { 8, 0, 0 }, .hsub = 1, .vsub = 1, .has_alpha = 1, .is_yuv = 1 },
  { .format = 151, .depth = 0, .num_planes = 1, .cpp = { 4, 0, 0 }, .hsub = 1, .vsub = 1, .is_yuv = 1 },
  { .format = 153, .depth = 0, .num_planes = 1, .cpp = { 8, 0, 0 }, .hsub = 1, .vsub = 1, .is_yuv = 1 },
  { .format = 152, .depth = 0, .num_planes = 1, .cpp = { 8, 0, 0 }, .hsub = 1, .vsub = 1, .is_yuv = 1 },
  { .format = 149, .depth = 0, .num_planes = 1,
    .char_per_block = { 8, 0, 0 }, .block_w = { 2, 0, 0 }, .block_h = { 2, 0, 0 },
    .hsub = 2, .vsub = 2, .has_alpha = 1, .is_yuv = 1 },
  { .format = 167, .depth = 0, .num_planes = 1,
    .char_per_block = { 8, 0, 0 }, .block_w = { 2, 0, 0 }, .block_h = { 2, 0, 0 },
    .hsub = 2, .vsub = 2, .is_yuv = 1 },
  { .format = 148, .depth = 0, .num_planes = 1,
    .char_per_block = { 8, 0, 0 }, .block_w = { 2, 0, 0 }, .block_h = { 2, 0, 0 },
    .hsub = 2, .vsub = 2, .has_alpha = 1, .is_yuv = 1 },
  { .format = 166, .depth = 0, .num_planes = 1,
    .char_per_block = { 8, 0, 0 }, .block_w = { 2, 0, 0 }, .block_h = { 2, 0, 0 },
    .hsub = 2, .vsub = 2, .is_yuv = 1 },
  { .format = 189, .depth = 0, .num_planes = 2,
    .char_per_block = { 2, 4, 0 }, .block_w = { 1, 0, 0 }, .block_h = { 1, 0, 0 },
    .hsub = 2, .vsub = 2, .is_yuv = 1},
  { .format = 188, .depth = 0, .num_planes = 2,
    .char_per_block = { 2, 4, 0 }, .block_w = { 1, 0, 0 }, .block_h = { 1, 0, 0 },
     .hsub = 2, .vsub = 2, .is_yuv = 1},
  { .format = 187, .depth = 0, .num_planes = 2,
    .char_per_block = { 2, 4, 0 }, .block_w = { 1, 0, 0 }, .block_h = { 1, 0, 0 },
    .hsub = 2, .vsub = 2, .is_yuv = 1},
  { .format = 186, .depth = 0,
    .num_planes = 2, .char_per_block = { 2, 4, 0 },
    .block_w = { 1, 0, 0 }, .block_h = { 1, 0, 0 }, .hsub = 2,
    .vsub = 1, .is_yuv = 1 },
  { .format = 170, .depth = 0,
    .num_planes = 1, .cpp = { 0, 0, 0 }, .hsub = 1, .vsub = 1,
    .is_yuv = 1 },
  { .format = 137, .depth = 0,
    .num_planes = 1, .cpp = { 0, 0, 0 }, .hsub = 2, .vsub = 2,
    .is_yuv = 1 },
  { .format = 138, .depth = 0,
    .num_planes = 1, .cpp = { 0, 0, 0 }, .hsub = 2, .vsub = 2,
    .is_yuv = 1 },
 };

 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(formats); ++i) {
  if (formats[i].format == format)
   return &formats[i];
 }

 return ((void*)0);
}
