
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_qp_hwq_info {void* va; int head; int entry_size; } ;



__attribute__((used)) static void *ocrdma_hwq_head(struct ocrdma_qp_hwq_info *q)
{
 return q->va + (q->head * q->entry_size);
}
