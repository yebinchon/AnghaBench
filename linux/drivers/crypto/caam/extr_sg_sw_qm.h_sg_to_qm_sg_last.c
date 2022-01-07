
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scatterlist {int dummy; } ;
struct qm_sg_entry {int dummy; } ;


 int qm_sg_entry_get_len (struct qm_sg_entry*) ;
 int qm_sg_entry_set_f (struct qm_sg_entry*,int ) ;
 struct qm_sg_entry* sg_to_qm_sg (struct scatterlist*,int,struct qm_sg_entry*,int ) ;

__attribute__((used)) static inline void sg_to_qm_sg_last(struct scatterlist *sg, int len,
        struct qm_sg_entry *qm_sg_ptr, u16 offset)
{
 qm_sg_ptr = sg_to_qm_sg(sg, len, qm_sg_ptr, offset);
 qm_sg_entry_set_f(qm_sg_ptr, qm_sg_entry_get_len(qm_sg_ptr));
}
