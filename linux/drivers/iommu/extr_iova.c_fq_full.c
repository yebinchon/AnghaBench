
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_fq {int tail; int head; int lock; } ;


 int IOVA_FQ_SIZE ;
 int assert_spin_locked (int *) ;

__attribute__((used)) static inline bool fq_full(struct iova_fq *fq)
{
 assert_spin_locked(&fq->lock);
 return (((fq->tail + 1) % IOVA_FQ_SIZE) == fq->head);
}
