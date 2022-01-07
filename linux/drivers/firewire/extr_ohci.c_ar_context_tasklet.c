
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_context {int * pointer; void* buffer; } ;


 unsigned int AR_BUFFERS ;
 unsigned int PAGE_SIZE ;
 int ar_context_abort (struct ar_context*,char*) ;
 unsigned int ar_first_buffer_index (struct ar_context*) ;
 int ar_recycle_buffers (struct ar_context*,unsigned int) ;
 unsigned int ar_search_last_active_buffer (struct ar_context*,unsigned int*) ;
 int ar_sync_buffers_for_cpu (struct ar_context*,unsigned int,unsigned int) ;
 void* handle_ar_packets (struct ar_context*,void*,void*) ;

__attribute__((used)) static void ar_context_tasklet(unsigned long data)
{
 struct ar_context *ctx = (struct ar_context *)data;
 unsigned int end_buffer_index, end_buffer_offset;
 void *p, *end;

 p = ctx->pointer;
 if (!p)
  return;

 end_buffer_index = ar_search_last_active_buffer(ctx,
       &end_buffer_offset);
 ar_sync_buffers_for_cpu(ctx, end_buffer_index, end_buffer_offset);
 end = ctx->buffer + end_buffer_index * PAGE_SIZE + end_buffer_offset;

 if (end_buffer_index < ar_first_buffer_index(ctx)) {






  void *buffer_end = ctx->buffer + AR_BUFFERS * PAGE_SIZE;
  p = handle_ar_packets(ctx, p, buffer_end);
  if (p < buffer_end)
   goto error;

  p -= AR_BUFFERS * PAGE_SIZE;
 }

 p = handle_ar_packets(ctx, p, end);
 if (p != end) {
  if (p > end)
   ar_context_abort(ctx, "inconsistent descriptor");
  goto error;
 }

 ctx->pointer = p;
 ar_recycle_buffers(ctx, end_buffer_index);

 return;

error:
 ctx->pointer = ((void*)0);
}
