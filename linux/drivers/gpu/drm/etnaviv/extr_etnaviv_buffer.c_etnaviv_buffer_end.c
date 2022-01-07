
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_cmdbuf {int user_size; } ;
struct etnaviv_gpu {scalar_t__ exec_state; int lock; struct etnaviv_cmdbuf buffer; } ;


 int CMD_END (struct etnaviv_cmdbuf*) ;
 int CMD_LOAD_STATE (struct etnaviv_cmdbuf*,int ,int) ;
 int CMD_SEM (struct etnaviv_cmdbuf*,int ,int ) ;
 int CMD_STALL (struct etnaviv_cmdbuf*,int ,int ) ;
 scalar_t__ ETNA_PIPE_2D ;
 scalar_t__ ETNA_PIPE_3D ;
 int SYNC_RECIPIENT_FE ;
 int SYNC_RECIPIENT_PE ;
 int VIVS_GL_FLUSH_CACHE ;
 int VIVS_GL_FLUSH_CACHE_COLOR ;
 int VIVS_GL_FLUSH_CACHE_DEPTH ;
 int VIVS_GL_FLUSH_CACHE_PE2D ;
 int VIVS_GL_FLUSH_CACHE_SHADER_L2 ;
 int VIVS_GL_FLUSH_CACHE_TEXTURE ;
 int VIVS_GL_FLUSH_CACHE_TEXTUREVS ;
 int VIVS_TS_FLUSH_CACHE ;
 int VIVS_TS_FLUSH_CACHE_FLUSH ;
 int VIV_FE_END_HEADER_OP_END ;
 int VIV_FE_LINK_HEADER_OP_LINK ;
 int VIV_FE_LINK_HEADER_PREFETCH (unsigned int) ;
 int etnaviv_buffer_replace_wait (struct etnaviv_cmdbuf*,unsigned int,int,int) ;
 int etnaviv_buffer_reserve (struct etnaviv_gpu*,struct etnaviv_cmdbuf*,unsigned int) ;
 int lockdep_assert_held (int *) ;

void etnaviv_buffer_end(struct etnaviv_gpu *gpu)
{
 struct etnaviv_cmdbuf *buffer = &gpu->buffer;
 unsigned int waitlink_offset = buffer->user_size - 16;
 u32 link_target, flush = 0;

 lockdep_assert_held(&gpu->lock);

 if (gpu->exec_state == ETNA_PIPE_2D)
  flush = VIVS_GL_FLUSH_CACHE_PE2D;
 else if (gpu->exec_state == ETNA_PIPE_3D)
  flush = VIVS_GL_FLUSH_CACHE_DEPTH |
   VIVS_GL_FLUSH_CACHE_COLOR |
   VIVS_GL_FLUSH_CACHE_TEXTURE |
   VIVS_GL_FLUSH_CACHE_TEXTUREVS |
   VIVS_GL_FLUSH_CACHE_SHADER_L2;

 if (flush) {
  unsigned int dwords = 7;

  link_target = etnaviv_buffer_reserve(gpu, buffer, dwords);

  CMD_SEM(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);
  CMD_STALL(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);
  CMD_LOAD_STATE(buffer, VIVS_GL_FLUSH_CACHE, flush);
  if (gpu->exec_state == ETNA_PIPE_3D)
   CMD_LOAD_STATE(buffer, VIVS_TS_FLUSH_CACHE,
           VIVS_TS_FLUSH_CACHE_FLUSH);
  CMD_SEM(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);
  CMD_STALL(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);
  CMD_END(buffer);

  etnaviv_buffer_replace_wait(buffer, waitlink_offset,
         VIV_FE_LINK_HEADER_OP_LINK |
         VIV_FE_LINK_HEADER_PREFETCH(dwords),
         link_target);
 } else {

  etnaviv_buffer_replace_wait(buffer, waitlink_offset,
         VIV_FE_END_HEADER_OP_END, 0);
 }
}
