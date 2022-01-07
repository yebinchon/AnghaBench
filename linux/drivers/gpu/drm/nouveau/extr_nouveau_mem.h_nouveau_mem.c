
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_reg {struct nouveau_mem* mm_node; } ;
struct nouveau_mem {int dummy; } ;



__attribute__((used)) static inline struct nouveau_mem *
nouveau_mem(struct ttm_mem_reg *reg)
{
 return reg->mm_node;
}
