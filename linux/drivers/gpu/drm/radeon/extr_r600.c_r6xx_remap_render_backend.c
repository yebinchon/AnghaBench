
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {scalar_t__ family; } ;


 int BUG_ON (int) ;
 scalar_t__ CHIP_RV740 ;
 int r600_count_pipe_bits (int) ;

u32 r6xx_remap_render_backend(struct radeon_device *rdev,
         u32 tiling_pipe_num,
         u32 max_rb_num,
         u32 total_max_rb_num,
         u32 disabled_rb_mask)
{
 u32 rendering_pipe_num, rb_num_width, req_rb_num;
 u32 pipe_rb_ratio, pipe_rb_remain, tmp;
 u32 data = 0, mask = 1 << (max_rb_num - 1);
 unsigned i, j;


 tmp = disabled_rb_mask | ((0xff << max_rb_num) & 0xff);

 if ((tmp & 0xff) != 0xff)
  disabled_rb_mask = tmp;

 rendering_pipe_num = 1 << tiling_pipe_num;
 req_rb_num = total_max_rb_num - r600_count_pipe_bits(disabled_rb_mask);
 BUG_ON(rendering_pipe_num < req_rb_num);

 pipe_rb_ratio = rendering_pipe_num / req_rb_num;
 pipe_rb_remain = rendering_pipe_num - pipe_rb_ratio * req_rb_num;

 if (rdev->family <= CHIP_RV740) {

  rb_num_width = 2;
 } else {

  rb_num_width = 4;
 }

 for (i = 0; i < max_rb_num; i++) {
  if (!(mask & disabled_rb_mask)) {
   for (j = 0; j < pipe_rb_ratio; j++) {
    data <<= rb_num_width;
    data |= max_rb_num - i - 1;
   }
   if (pipe_rb_remain) {
    data <<= rb_num_width;
    data |= max_rb_num - i - 1;
    pipe_rb_remain--;
   }
  }
  mask >>= 1;
 }

 return data;
}
