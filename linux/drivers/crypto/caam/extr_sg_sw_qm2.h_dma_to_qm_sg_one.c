
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dpaa2_sg_entry {int dummy; } ;
typedef int dma_addr_t ;


 int dpaa2_sg_set_addr (struct dpaa2_sg_entry*,int ) ;
 int dpaa2_sg_set_bpid (struct dpaa2_sg_entry*,int ) ;
 int dpaa2_sg_set_final (struct dpaa2_sg_entry*,int) ;
 int dpaa2_sg_set_format (struct dpaa2_sg_entry*,int ) ;
 int dpaa2_sg_set_len (struct dpaa2_sg_entry*,int ) ;
 int dpaa2_sg_set_offset (struct dpaa2_sg_entry*,int ) ;
 int dpaa2_sg_single ;

__attribute__((used)) static inline void dma_to_qm_sg_one(struct dpaa2_sg_entry *qm_sg_ptr,
        dma_addr_t dma, u32 len, u16 offset)
{
 dpaa2_sg_set_addr(qm_sg_ptr, dma);
 dpaa2_sg_set_format(qm_sg_ptr, dpaa2_sg_single);
 dpaa2_sg_set_final(qm_sg_ptr, 0);
 dpaa2_sg_set_len(qm_sg_ptr, len);
 dpaa2_sg_set_bpid(qm_sg_ptr, 0);
 dpaa2_sg_set_offset(qm_sg_ptr, offset);
}
