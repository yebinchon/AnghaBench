
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct etnaviv_cmdbuf {int user_size; } ;
struct etnaviv_gpu {int lock; struct etnaviv_cmdbuf buffer; } ;


 int ALIGN (int,int) ;
 int CMD_END (struct etnaviv_cmdbuf*) ;
 int CMD_LOAD_STATE (struct etnaviv_cmdbuf*,int ,int ) ;
 int VIVS_MMUv2_PTA_CONFIG ;
 int VIVS_MMUv2_PTA_CONFIG_INDEX (unsigned short) ;
 int lockdep_assert_held (int *) ;

u16 etnaviv_buffer_config_pta(struct etnaviv_gpu *gpu, unsigned short id)
{
 struct etnaviv_cmdbuf *buffer = &gpu->buffer;

 lockdep_assert_held(&gpu->lock);

 buffer->user_size = 0;

 CMD_LOAD_STATE(buffer, VIVS_MMUv2_PTA_CONFIG,
         VIVS_MMUv2_PTA_CONFIG_INDEX(id));

 CMD_END(buffer);

 buffer->user_size = ALIGN(buffer->user_size, 8);

 return buffer->user_size / 8;
}
