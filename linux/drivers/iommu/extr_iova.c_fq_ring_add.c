
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_fq {unsigned int tail; int lock; } ;


 unsigned int IOVA_FQ_SIZE ;
 int assert_spin_locked (int *) ;

__attribute__((used)) static inline unsigned fq_ring_add(struct iova_fq *fq)
{
 unsigned idx = fq->tail;

 assert_spin_locked(&fq->lock);

 fq->tail = (idx + 1) % IOVA_FQ_SIZE;

 return idx;
}
