
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sec4_sg_entry {void* bpid_offset; void* len; int ptr; } ;
struct dpaa2_sg_entry {int dummy; } ;
typedef int dma_addr_t ;


 int DUMP_PREFIX_ADDRESS ;
 int SEC4_SG_OFFSET_MASK ;
 scalar_t__ caam_dpaa2 ;
 void* cpu_to_caam32 (int) ;
 int cpu_to_caam_dma64 (int ) ;
 int dma_to_qm_sg_one (struct dpaa2_sg_entry*,int ,int,int) ;
 int print_hex_dump_debug (char*,int ,int,int,struct sec4_sg_entry*,int,int) ;

__attribute__((used)) static inline void dma_to_sec4_sg_one(struct sec4_sg_entry *sec4_sg_ptr,
          dma_addr_t dma, u32 len, u16 offset)
{
 if (caam_dpaa2) {
  dma_to_qm_sg_one((struct dpaa2_sg_entry *)sec4_sg_ptr, dma, len,
     offset);
 } else {
  sec4_sg_ptr->ptr = cpu_to_caam_dma64(dma);
  sec4_sg_ptr->len = cpu_to_caam32(len);
  sec4_sg_ptr->bpid_offset = cpu_to_caam32(offset &
        SEC4_SG_OFFSET_MASK);
 }

 print_hex_dump_debug("sec4_sg_ptr@: ", DUMP_PREFIX_ADDRESS, 16, 4,
        sec4_sg_ptr, sizeof(struct sec4_sg_entry), 1);
}
