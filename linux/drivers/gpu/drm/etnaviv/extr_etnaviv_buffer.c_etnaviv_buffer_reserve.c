
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct etnaviv_gpu {TYPE_1__* mmu_context; } ;
struct etnaviv_cmdbuf {scalar_t__ user_size; scalar_t__ size; } ;
struct TYPE_2__ {int cmdbuf_mapping; } ;


 scalar_t__ etnaviv_cmdbuf_get_va (struct etnaviv_cmdbuf*,int *) ;

__attribute__((used)) static u32 etnaviv_buffer_reserve(struct etnaviv_gpu *gpu,
 struct etnaviv_cmdbuf *buffer, unsigned int cmd_dwords)
{
 if (buffer->user_size + cmd_dwords * sizeof(u64) > buffer->size)
  buffer->user_size = 0;

 return etnaviv_cmdbuf_get_va(buffer,
         &gpu->mmu_context->cmdbuf_mapping) +
        buffer->user_size;
}
