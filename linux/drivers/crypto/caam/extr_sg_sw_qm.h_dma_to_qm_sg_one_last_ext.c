
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qm_sg_entry {int cfg; } ;
typedef int dma_addr_t ;


 int QM_SG_EXT ;
 int QM_SG_FIN ;
 int QM_SG_LEN_MASK ;
 int __dma_to_qm_sg (struct qm_sg_entry*,int ,int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void dma_to_qm_sg_one_last_ext(struct qm_sg_entry *qm_sg_ptr,
          dma_addr_t dma, u32 len,
          u16 offset)
{
 __dma_to_qm_sg(qm_sg_ptr, dma, offset);
 qm_sg_ptr->cfg = cpu_to_be32(QM_SG_EXT | QM_SG_FIN |
         (len & QM_SG_LEN_MASK));
}
