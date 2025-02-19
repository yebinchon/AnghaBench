
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef void* u16 ;
struct vbva_infoscreen {void* flags; void* bits_per_pixel; void* height; void* width; void* line_size; void* start_offset; void* origin_y; void* origin_x; void* view_index; } ;
struct gen_pool {int dummy; } ;
typedef void* s32 ;


 int HGSMI_CH_VBVA ;
 int VBVA_INFO_SCREEN ;
 struct vbva_infoscreen* hgsmi_buffer_alloc (struct gen_pool*,int,int ,int ) ;
 int hgsmi_buffer_free (struct gen_pool*,struct vbva_infoscreen*) ;
 int hgsmi_buffer_submit (struct gen_pool*,struct vbva_infoscreen*) ;

void hgsmi_process_display_info(struct gen_pool *ctx, u32 display,
    s32 origin_x, s32 origin_y, u32 start_offset,
    u32 pitch, u32 width, u32 height,
    u16 bpp, u16 flags)
{
 struct vbva_infoscreen *p;

 p = hgsmi_buffer_alloc(ctx, sizeof(*p), HGSMI_CH_VBVA,
          VBVA_INFO_SCREEN);
 if (!p)
  return;

 p->view_index = display;
 p->origin_x = origin_x;
 p->origin_y = origin_y;
 p->start_offset = start_offset;
 p->line_size = pitch;
 p->width = width;
 p->height = height;
 p->bits_per_pixel = bpp;
 p->flags = flags;

 hgsmi_buffer_submit(ctx, p);
 hgsmi_buffer_free(ctx, p);
}
