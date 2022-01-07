
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vbva_mouse_pointer_shape {int result; int flags; int hot_X; int hot_y; int width; int height; int data; } ;
struct gen_pool {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int HGSMI_CH_VBVA ;
 int VBOX_MOUSE_POINTER_SHAPE ;
 int VBOX_MOUSE_POINTER_VISIBLE ;
 int VBVA_MOUSE_POINTER_SHAPE ;



 struct vbva_mouse_pointer_shape* hgsmi_buffer_alloc (struct gen_pool*,int,int ,int ) ;
 int hgsmi_buffer_free (struct gen_pool*,struct vbva_mouse_pointer_shape*) ;
 int hgsmi_buffer_submit (struct gen_pool*,struct vbva_mouse_pointer_shape*) ;
 int memcpy (int ,int *,int) ;

int hgsmi_update_pointer_shape(struct gen_pool *ctx, u32 flags,
          u32 hot_x, u32 hot_y, u32 width, u32 height,
          u8 *pixels, u32 len)
{
 struct vbva_mouse_pointer_shape *p;
 u32 pixel_len = 0;
 int rc;

 if (flags & VBOX_MOUSE_POINTER_SHAPE) {




  pixel_len = ((((width + 7) / 8) * height + 3) & ~3) +
    width * 4 * height;
  if (pixel_len > len)
   return -EINVAL;





  flags |= VBOX_MOUSE_POINTER_VISIBLE;
 }

 p = hgsmi_buffer_alloc(ctx, sizeof(*p) + pixel_len, HGSMI_CH_VBVA,
          VBVA_MOUSE_POINTER_SHAPE);
 if (!p)
  return -ENOMEM;

 p->result = 128;
 p->flags = flags;
 p->hot_X = hot_x;
 p->hot_y = hot_y;
 p->width = width;
 p->height = height;
 if (pixel_len)
  memcpy(p->data, pixels, pixel_len);

 hgsmi_buffer_submit(ctx, p);

 switch (p->result) {
 case 128:
  rc = 0;
  break;
 case 129:
  rc = -ENOMEM;
  break;
 case 130:
  rc = -EBUSY;
  break;
 default:
  rc = -EINVAL;
 }

 hgsmi_buffer_free(ctx, p);

 return rc;
}
