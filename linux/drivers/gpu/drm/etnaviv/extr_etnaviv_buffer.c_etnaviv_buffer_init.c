
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct etnaviv_cmdbuf {int user_size; } ;
struct etnaviv_gpu {TYPE_1__* mmu_context; int lock; struct etnaviv_cmdbuf buffer; } ;
struct TYPE_2__ {int cmdbuf_mapping; } ;


 int CMD_LINK (struct etnaviv_cmdbuf*,int,scalar_t__) ;
 int CMD_WAIT (struct etnaviv_cmdbuf*) ;
 scalar_t__ etnaviv_cmdbuf_get_va (struct etnaviv_cmdbuf*,int *) ;
 int lockdep_assert_held (int *) ;

u16 etnaviv_buffer_init(struct etnaviv_gpu *gpu)
{
 struct etnaviv_cmdbuf *buffer = &gpu->buffer;

 lockdep_assert_held(&gpu->lock);


 buffer->user_size = 0;

 CMD_WAIT(buffer);
 CMD_LINK(buffer, 2,
   etnaviv_cmdbuf_get_va(buffer, &gpu->mmu_context->cmdbuf_mapping)
   + buffer->user_size - 4);

 return buffer->user_size / 8;
}
