
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct etnaviv_gpu {scalar_t__ exec_state; int lock; } ;
struct etnaviv_cmdbuf {int dummy; } ;


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
 int VIVS_GL_PIPE_SELECT ;
 int VIVS_GL_PIPE_SELECT_PIPE (int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void etnaviv_cmd_select_pipe(struct etnaviv_gpu *gpu,
 struct etnaviv_cmdbuf *buffer, u8 pipe)
{
 u32 flush = 0;

 lockdep_assert_held(&gpu->lock);







 if (gpu->exec_state == ETNA_PIPE_2D)
  flush = VIVS_GL_FLUSH_CACHE_PE2D;
 else if (gpu->exec_state == ETNA_PIPE_3D)
  flush = VIVS_GL_FLUSH_CACHE_DEPTH | VIVS_GL_FLUSH_CACHE_COLOR;

 CMD_LOAD_STATE(buffer, VIVS_GL_FLUSH_CACHE, flush);
 CMD_SEM(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);
 CMD_STALL(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);

 CMD_LOAD_STATE(buffer, VIVS_GL_PIPE_SELECT,
         VIVS_GL_PIPE_SELECT_PIPE(pipe));
}
