
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ttm_mem_reg {int num_pages; } ;
struct ttm_buffer_object {int dummy; } ;
struct nouveau_mem {TYPE_1__* vma; } ;
struct nouveau_channel {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 int BEGIN_NV04 (struct nouveau_channel*,int ,int,int) ;
 int NvSubCopy ;
 int OUT_RING (struct nouveau_channel*,int) ;
 int PAGE_SIZE ;
 int RING_SPACE (struct nouveau_channel*,int) ;
 int lower_32_bits (int) ;
 struct nouveau_mem* nouveau_mem (struct ttm_mem_reg*) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int
nva3_bo_move_copy(struct nouveau_channel *chan, struct ttm_buffer_object *bo,
    struct ttm_mem_reg *old_reg, struct ttm_mem_reg *new_reg)
{
 struct nouveau_mem *mem = nouveau_mem(old_reg);
 u64 src_offset = mem->vma[0].addr;
 u64 dst_offset = mem->vma[1].addr;
 u32 page_count = new_reg->num_pages;
 int ret;

 page_count = new_reg->num_pages;
 while (page_count) {
  int line_count = (page_count > 8191) ? 8191 : page_count;

  ret = RING_SPACE(chan, 11);
  if (ret)
   return ret;

  BEGIN_NV04(chan, NvSubCopy, 0x030c, 8);
  OUT_RING (chan, upper_32_bits(src_offset));
  OUT_RING (chan, lower_32_bits(src_offset));
  OUT_RING (chan, upper_32_bits(dst_offset));
  OUT_RING (chan, lower_32_bits(dst_offset));
  OUT_RING (chan, PAGE_SIZE);
  OUT_RING (chan, PAGE_SIZE);
  OUT_RING (chan, PAGE_SIZE);
  OUT_RING (chan, line_count);
  BEGIN_NV04(chan, NvSubCopy, 0x0300, 1);
  OUT_RING (chan, 0x00000110);

  page_count -= line_count;
  src_offset += (PAGE_SIZE * line_count);
  dst_offset += (PAGE_SIZE * line_count);
 }

 return 0;
}
