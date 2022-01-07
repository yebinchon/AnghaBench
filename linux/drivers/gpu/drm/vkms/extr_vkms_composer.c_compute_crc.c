
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_3__ {int x1; int y1; } ;
struct vkms_composer {int offset; int pitch; int cpp; TYPE_1__ src; } ;


 int crc32_le (int ,void*,int) ;
 int drm_rect_height (TYPE_1__*) ;
 int drm_rect_width (TYPE_1__*) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static uint32_t compute_crc(void *vaddr_out, struct vkms_composer *composer)
{
 int i, j, src_offset;
 int x_src = composer->src.x1 >> 16;
 int y_src = composer->src.y1 >> 16;
 int h_src = drm_rect_height(&composer->src) >> 16;
 int w_src = drm_rect_width(&composer->src) >> 16;
 u32 crc = 0;

 for (i = y_src; i < y_src + h_src; ++i) {
  for (j = x_src; j < x_src + w_src; ++j) {
   src_offset = composer->offset
         + (i * composer->pitch)
         + (j * composer->cpp);

   memset(vaddr_out + src_offset + 24, 0, 8);
   crc = crc32_le(crc, vaddr_out + src_offset,
           sizeof(u32));
  }
 }

 return crc;
}
