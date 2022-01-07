
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_reg {int num_pages; } ;
struct ttm_buffer_object {int dummy; } ;
struct nouveau_mem {TYPE_1__* vma; } ;
struct nouveau_channel {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 int BEGIN_IMC0 (struct nouveau_channel*,int ,int,int) ;
 int BEGIN_NVC0 (struct nouveau_channel*,int ,int,int) ;
 int NvSubCopy ;
 int OUT_RING (struct nouveau_channel*,int ) ;
 int PAGE_SIZE ;
 int RING_SPACE (struct nouveau_channel*,int) ;
 int lower_32_bits (int ) ;
 struct nouveau_mem* nouveau_mem (struct ttm_mem_reg*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int
nve0_bo_move_copy(struct nouveau_channel *chan, struct ttm_buffer_object *bo,
    struct ttm_mem_reg *old_reg, struct ttm_mem_reg *new_reg)
{
 struct nouveau_mem *mem = nouveau_mem(old_reg);
 int ret = RING_SPACE(chan, 10);
 if (ret == 0) {
  BEGIN_NVC0(chan, NvSubCopy, 0x0400, 8);
  OUT_RING (chan, upper_32_bits(mem->vma[0].addr));
  OUT_RING (chan, lower_32_bits(mem->vma[0].addr));
  OUT_RING (chan, upper_32_bits(mem->vma[1].addr));
  OUT_RING (chan, lower_32_bits(mem->vma[1].addr));
  OUT_RING (chan, PAGE_SIZE);
  OUT_RING (chan, PAGE_SIZE);
  OUT_RING (chan, PAGE_SIZE);
  OUT_RING (chan, new_reg->num_pages);
  BEGIN_IMC0(chan, NvSubCopy, 0x0300, 0x0386);
 }
 return ret;
}
