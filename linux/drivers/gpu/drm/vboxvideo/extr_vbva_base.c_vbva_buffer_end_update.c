
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbva_record {int len_and_flags; } ;
struct vbva_buf_ctx {int buffer_overflow; struct vbva_record* record; int vbva; } ;


 int VBVA_F_RECORD_PARTIAL ;
 int WARN_ON (int) ;

void vbva_buffer_end_update(struct vbva_buf_ctx *vbva_ctx)
{
 struct vbva_record *record = vbva_ctx->record;

 WARN_ON(!vbva_ctx->vbva || !record ||
  !(record->len_and_flags & VBVA_F_RECORD_PARTIAL));


 record->len_and_flags &= ~VBVA_F_RECORD_PARTIAL;

 vbva_ctx->buffer_overflow = 0;
 vbva_ctx->record = ((void*)0);
}
