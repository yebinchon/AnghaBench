
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar_context {unsigned int last_buffer_index; TYPE_1__* descriptors; } ;
typedef scalar_t__ __le16 ;
struct TYPE_2__ {int res_count; } ;


 unsigned int MAX_AR_PACKET_SIZE ;
 unsigned int PAGE_SIZE ;
 scalar_t__ READ_ONCE (int ) ;
 int ar_context_abort (struct ar_context*,char*) ;
 unsigned int ar_first_buffer_index (struct ar_context*) ;
 unsigned int ar_next_buffer_index (unsigned int) ;
 scalar_t__ cpu_to_le16 (unsigned int) ;
 unsigned int le16_to_cpu (scalar_t__) ;
 int rmb () ;

__attribute__((used)) static unsigned int ar_search_last_active_buffer(struct ar_context *ctx,
       unsigned int *buffer_offset)
{
 unsigned int i, next_i, last = ctx->last_buffer_index;
 __le16 res_count, next_res_count;

 i = ar_first_buffer_index(ctx);
 res_count = READ_ONCE(ctx->descriptors[i].res_count);


 while (i != last && res_count == 0) {


  next_i = ar_next_buffer_index(i);
  rmb();
  next_res_count = READ_ONCE(ctx->descriptors[next_i].res_count);




  if (next_res_count == cpu_to_le16(PAGE_SIZE)) {







   if (MAX_AR_PACKET_SIZE > PAGE_SIZE && i != last) {
    next_i = ar_next_buffer_index(next_i);
    rmb();
    next_res_count = READ_ONCE(ctx->descriptors[next_i].res_count);
    if (next_res_count != cpu_to_le16(PAGE_SIZE))
     goto next_buffer_is_active;
   }

   break;
  }

next_buffer_is_active:
  i = next_i;
  res_count = next_res_count;
 }

 rmb();

 *buffer_offset = PAGE_SIZE - le16_to_cpu(res_count);
 if (*buffer_offset > PAGE_SIZE) {
  *buffer_offset = 0;
  ar_context_abort(ctx, "corrupted descriptor");
 }

 return i;
}
