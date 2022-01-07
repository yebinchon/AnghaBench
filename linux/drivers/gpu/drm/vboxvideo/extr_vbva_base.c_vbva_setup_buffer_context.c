
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct vbva_buf_ctx {void* buffer_length; void* buffer_offset; } ;



void vbva_setup_buffer_context(struct vbva_buf_ctx *vbva_ctx,
          u32 buffer_offset, u32 buffer_length)
{
 vbva_ctx->buffer_offset = buffer_offset;
 vbva_ctx->buffer_length = buffer_length;
}
