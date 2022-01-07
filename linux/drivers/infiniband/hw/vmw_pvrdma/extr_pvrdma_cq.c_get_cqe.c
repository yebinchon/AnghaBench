
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvrdma_cqe {int dummy; } ;
struct pvrdma_cq {scalar_t__ offset; int pdir; } ;


 scalar_t__ pvrdma_page_dir_get_ptr (int *,scalar_t__) ;

__attribute__((used)) static inline struct pvrdma_cqe *get_cqe(struct pvrdma_cq *cq, int i)
{
 return (struct pvrdma_cqe *)pvrdma_page_dir_get_ptr(
     &cq->pdir,
     cq->offset +
     sizeof(struct pvrdma_cqe) * i);
}
