
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;
struct urb {char* transfer_buffer; int transfer_buffer_length; } ;
struct drm_device {int dummy; } ;


 int BUG_ON (int) ;
 int udl_compress_hline16 (char const**,char const*,int*,char**,char*,int) ;
 struct urb* udl_get_urb (struct drm_device*) ;
 scalar_t__ udl_submit_urb (struct drm_device*,struct urb*,int) ;

int udl_render_hline(struct drm_device *dev, int log_bpp, struct urb **urb_ptr,
       const char *front, char **urb_buf_ptr,
       u32 byte_offset, u32 device_byte_offset,
       u32 byte_width,
       int *ident_ptr, int *sent_ptr)
{
 const u8 *line_start, *line_end, *next_pixel;
 u32 base16 = 0 + (device_byte_offset >> log_bpp) * 2;
 struct urb *urb = *urb_ptr;
 u8 *cmd = *urb_buf_ptr;
 u8 *cmd_end = (u8 *) urb->transfer_buffer + urb->transfer_buffer_length;

 BUG_ON(!(log_bpp == 1 || log_bpp == 2));

 line_start = (u8 *) (front + byte_offset);
 next_pixel = line_start;
 line_end = next_pixel + byte_width;

 while (next_pixel < line_end) {

  udl_compress_hline16(&next_pixel,
        line_end, &base16,
        (u8 **) &cmd, (u8 *) cmd_end, log_bpp);

  if (cmd >= cmd_end) {
   int len = cmd - (u8 *) urb->transfer_buffer;
   if (udl_submit_urb(dev, urb, len))
    return 1;
   *sent_ptr += len;
   urb = udl_get_urb(dev);
   if (!urb)
    return 1;
   *urb_ptr = urb;
   cmd = urb->transfer_buffer;
   cmd_end = &cmd[urb->transfer_buffer_length];
  }
 }

 *urb_buf_ptr = cmd;

 return 0;
}
