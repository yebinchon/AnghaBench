
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_cqe {int dummy; } ;
struct mthca_cq {int buf; } ;


 struct mthca_cqe* get_cqe_from_buf (int *,int) ;

__attribute__((used)) static inline struct mthca_cqe *get_cqe(struct mthca_cq *cq, int entry)
{
 return get_cqe_from_buf(&cq->buf, entry);
}
