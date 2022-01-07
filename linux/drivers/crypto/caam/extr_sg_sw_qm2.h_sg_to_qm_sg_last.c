
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scatterlist {int dummy; } ;
struct dpaa2_sg_entry {int dummy; } ;


 int dpaa2_sg_set_final (struct dpaa2_sg_entry*,int) ;
 struct dpaa2_sg_entry* sg_to_qm_sg (struct scatterlist*,int,struct dpaa2_sg_entry*,int ) ;

__attribute__((used)) static inline void sg_to_qm_sg_last(struct scatterlist *sg, int len,
        struct dpaa2_sg_entry *qm_sg_ptr,
        u16 offset)
{
 qm_sg_ptr = sg_to_qm_sg(sg, len, qm_sg_ptr, offset);
 dpaa2_sg_set_final(qm_sg_ptr, 1);
}
