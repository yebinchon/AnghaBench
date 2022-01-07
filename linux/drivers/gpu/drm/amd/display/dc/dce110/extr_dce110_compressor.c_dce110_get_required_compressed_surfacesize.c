
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int preferred_must_be_framebuffer_pool; int min_must_be_framebuffer_pool; } ;
struct fbc_requested_compressed_size {unsigned int preferred_size; unsigned int min_size; int preferred_size_alignment; int min_size_alignment; TYPE_1__ bits; } ;
struct fbc_input_info {scalar_t__ dynamic_fbc_buffer_alloc; } ;


 unsigned int FBC_MAX_X ;
 unsigned int FBC_MAX_Y ;
 unsigned int align_to_chunks_number_per_line (unsigned int) ;
 int get_max_support_fbc_buffersize (unsigned int*,unsigned int*) ;

bool dce110_get_required_compressed_surfacesize(struct fbc_input_info fbc_input_info,
      struct fbc_requested_compressed_size size)
{
 bool result = 0;

 unsigned int max_x = FBC_MAX_X, max_y = FBC_MAX_Y;

 get_max_support_fbc_buffersize(&max_x, &max_y);

 if (fbc_input_info.dynamic_fbc_buffer_alloc == 0) {




  size.preferred_size = size.min_size = align_to_chunks_number_per_line(max_x) * max_y * 4;
  size.preferred_size_alignment = size.min_size_alignment = 0x100;
  size.bits.preferred_must_be_framebuffer_pool = 1;
  size.bits.min_must_be_framebuffer_pool = 1;

  result = 1;
 }





 return result;
}
