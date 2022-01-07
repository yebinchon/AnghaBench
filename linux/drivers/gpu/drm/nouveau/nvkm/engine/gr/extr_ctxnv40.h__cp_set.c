
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_grctx {int dummy; } ;


 int CP_SET ;
 int CP_SET_1 ;
 int cp_out (struct nvkm_grctx*,int) ;

__attribute__((used)) static inline void
_cp_set(struct nvkm_grctx *ctx, int flag, int state)
{
 cp_out(ctx, CP_SET | flag | (state ? CP_SET_1 : 0));
}
