
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ttm_mem_reg {scalar_t__ mem_type; } ;
struct ttm_buffer_object {int dummy; } ;
struct TYPE_2__ {int handle; } ;
struct nouveau_channel {TYPE_1__ vram; } ;


 int NvDmaTT ;
 scalar_t__ TTM_PL_TT ;

__attribute__((used)) static inline uint32_t
nouveau_bo_mem_ctxdma(struct ttm_buffer_object *bo,
        struct nouveau_channel *chan, struct ttm_mem_reg *reg)
{
 if (reg->mem_type == TTM_PL_TT)
  return NvDmaTT;
 return chan->vram.handle;
}
