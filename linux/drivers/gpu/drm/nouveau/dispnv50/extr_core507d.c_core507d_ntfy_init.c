
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_bo {int dummy; } ;


 int nouveau_bo_wr32 (struct nouveau_bo*,int,int) ;

void
core507d_ntfy_init(struct nouveau_bo *bo, u32 offset)
{
 nouveau_bo_wr32(bo, offset / 4, 0x00000000);
}
