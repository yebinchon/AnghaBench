
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_grctx {int dummy; } ;


 int CP_WAIT ;
 int CP_WAIT_SET ;
 int cp_out (struct nvkm_grctx*,int) ;

__attribute__((used)) static inline void
_cp_wait(struct nvkm_grctx *ctx, int flag, int state)
{
 cp_out(ctx, CP_WAIT | flag | (state ? CP_WAIT_SET : 0));
}
