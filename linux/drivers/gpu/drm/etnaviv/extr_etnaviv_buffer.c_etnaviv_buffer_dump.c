
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct etnaviv_gpu {TYPE_1__* mmu_context; int dev; } ;
struct etnaviv_cmdbuf {int size; int* vaddr; } ;
struct TYPE_2__ {int cmdbuf_mapping; } ;


 int DUMP_PREFIX_OFFSET ;
 int KERN_INFO ;
 int dev_info (int ,char*,int*,int,int) ;
 int etnaviv_cmdbuf_get_va (struct etnaviv_cmdbuf*,int *) ;
 int print_hex_dump (int ,char*,int ,int,int,int*,int,int ) ;

__attribute__((used)) static void etnaviv_buffer_dump(struct etnaviv_gpu *gpu,
 struct etnaviv_cmdbuf *buf, u32 off, u32 len)
{
 u32 size = buf->size;
 u32 *ptr = buf->vaddr + off;

 dev_info(gpu->dev, "virt %p phys 0x%08x free 0x%08x\n",
   ptr, etnaviv_cmdbuf_get_va(buf,
   &gpu->mmu_context->cmdbuf_mapping) +
   off, size - len * 4 - off);

 print_hex_dump(KERN_INFO, "cmd ", DUMP_PREFIX_OFFSET, 16, 4,
   ptr, len * 4, 0);
}
