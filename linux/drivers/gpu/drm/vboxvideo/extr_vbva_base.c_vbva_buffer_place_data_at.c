
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void const u8 ;
typedef size_t u32 ;
struct vbva_buffer {size_t data_len; void const* data; } ;
struct vbva_buf_ctx {struct vbva_buffer* vbva; } ;
typedef scalar_t__ s32 ;


 int memcpy (void const*,void const*,scalar_t__) ;

__attribute__((used)) static void vbva_buffer_place_data_at(struct vbva_buf_ctx *vbva_ctx,
          const void *p, u32 len, u32 offset)
{
 struct vbva_buffer *vbva = vbva_ctx->vbva;
 u32 bytes_till_boundary = vbva->data_len - offset;
 u8 *dst = &vbva->data[offset];
 s32 diff = len - bytes_till_boundary;

 if (diff <= 0) {

  memcpy(dst, p, len);
 } else {

  memcpy(dst, p, bytes_till_boundary);
  memcpy(&vbva->data[0], (u8 *)p + bytes_till_boundary, diff);
 }
}
