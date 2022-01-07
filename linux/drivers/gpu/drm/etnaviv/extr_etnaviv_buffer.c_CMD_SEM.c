
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_cmdbuf {int dummy; } ;


 int CMD_LOAD_STATE (struct etnaviv_cmdbuf*,int ,int) ;
 int VIVS_GL_SEMAPHORE_TOKEN ;
 int VIVS_GL_SEMAPHORE_TOKEN_FROM (int ) ;
 int VIVS_GL_SEMAPHORE_TOKEN_TO (int ) ;

__attribute__((used)) static inline void CMD_SEM(struct etnaviv_cmdbuf *buffer, u32 from, u32 to)
{
 CMD_LOAD_STATE(buffer, VIVS_GL_SEMAPHORE_TOKEN,
         VIVS_GL_SEMAPHORE_TOKEN_FROM(from) |
         VIVS_GL_SEMAPHORE_TOKEN_TO(to));
}
