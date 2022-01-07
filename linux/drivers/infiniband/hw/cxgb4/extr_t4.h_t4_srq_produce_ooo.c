
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_srq {int ooo_count; int in_use; } ;



__attribute__((used)) static inline void t4_srq_produce_ooo(struct t4_srq *srq)
{
 srq->in_use--;
 srq->ooo_count++;
}
