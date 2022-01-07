
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct etnaviv_cmdbuf {int user_size; } ;
struct etnaviv_gpu {TYPE_1__* mmu_context; int lock; struct etnaviv_cmdbuf buffer; } ;
struct TYPE_2__ {int cmdbuf_mapping; } ;


 int CMD_END (struct etnaviv_cmdbuf*) ;
 int CMD_LINK (struct etnaviv_cmdbuf*,int,scalar_t__) ;
 int CMD_LOAD_STATE (struct etnaviv_cmdbuf*,int ,int) ;
 int CMD_WAIT (struct etnaviv_cmdbuf*) ;
 int VIVS_GL_EVENT ;
 int VIVS_GL_EVENT_EVENT_ID (unsigned int) ;
 int VIVS_GL_EVENT_FROM_PE ;
 int VIV_FE_LINK_HEADER_OP_LINK ;
 int VIV_FE_LINK_HEADER_PREFETCH (int) ;
 int etnaviv_buffer_replace_wait (struct etnaviv_cmdbuf*,unsigned int,int,int) ;
 int etnaviv_buffer_reserve (struct etnaviv_gpu*,struct etnaviv_cmdbuf*,int) ;
 scalar_t__ etnaviv_cmdbuf_get_va (struct etnaviv_cmdbuf*,int *) ;
 int lockdep_assert_held (int *) ;

void etnaviv_sync_point_queue(struct etnaviv_gpu *gpu, unsigned int event)
{
 struct etnaviv_cmdbuf *buffer = &gpu->buffer;
 unsigned int waitlink_offset = buffer->user_size - 16;
 u32 dwords, target;

 lockdep_assert_held(&gpu->lock);





 dwords = 4;
 target = etnaviv_buffer_reserve(gpu, buffer, dwords);


 CMD_LOAD_STATE(buffer, VIVS_GL_EVENT, VIVS_GL_EVENT_EVENT_ID(event) |
         VIVS_GL_EVENT_FROM_PE);


 CMD_END(buffer);


 CMD_WAIT(buffer);
 CMD_LINK(buffer, 2,
   etnaviv_cmdbuf_get_va(buffer, &gpu->mmu_context->cmdbuf_mapping)
   + buffer->user_size - 4);





 etnaviv_buffer_replace_wait(buffer, waitlink_offset,
        VIV_FE_LINK_HEADER_OP_LINK |
        VIV_FE_LINK_HEADER_PREFETCH(dwords),
        target);
}
