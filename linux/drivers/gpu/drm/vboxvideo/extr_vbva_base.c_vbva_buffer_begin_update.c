
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vbva_record {int len_and_flags; } ;
struct vbva_buf_ctx {struct vbva_record* record; TYPE_2__* vbva; scalar_t__ buffer_overflow; } ;
struct gen_pool {int dummy; } ;
struct TYPE_3__ {int host_events; } ;
struct TYPE_4__ {int record_free_index; int record_first_index; struct vbva_record* records; TYPE_1__ host_flags; } ;


 int VBVA_F_MODE_ENABLED ;
 int VBVA_F_RECORD_PARTIAL ;
 int VBVA_MAX_RECORDS ;
 int WARN_ON (int) ;
 int vbva_buffer_flush (struct gen_pool*) ;

bool vbva_buffer_begin_update(struct vbva_buf_ctx *vbva_ctx,
         struct gen_pool *ctx)
{
 struct vbva_record *record;
 u32 next;

 if (!vbva_ctx->vbva ||
     !(vbva_ctx->vbva->host_flags.host_events & VBVA_F_MODE_ENABLED))
  return 0;

 WARN_ON(vbva_ctx->buffer_overflow || vbva_ctx->record);

 next = (vbva_ctx->vbva->record_free_index + 1) % VBVA_MAX_RECORDS;


 if (next == vbva_ctx->vbva->record_first_index)
  vbva_buffer_flush(ctx);


 if (next == vbva_ctx->vbva->record_first_index)
  return 0;

 record = &vbva_ctx->vbva->records[vbva_ctx->vbva->record_free_index];
 record->len_and_flags = VBVA_F_RECORD_PARTIAL;
 vbva_ctx->vbva->record_free_index = next;

 vbva_ctx->record = record;

 return 1;
}
