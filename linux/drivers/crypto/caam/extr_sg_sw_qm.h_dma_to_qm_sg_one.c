
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qm_sg_entry {int dummy; } ;
typedef int dma_addr_t ;


 int __dma_to_qm_sg (struct qm_sg_entry*,int ,int ) ;
 int qm_sg_entry_set_len (struct qm_sg_entry*,int ) ;

__attribute__((used)) static inline void dma_to_qm_sg_one(struct qm_sg_entry *qm_sg_ptr,
        dma_addr_t dma, u32 len, u16 offset)
{
 __dma_to_qm_sg(qm_sg_ptr, dma, offset);
 qm_sg_entry_set_len(qm_sg_ptr, len);
}
