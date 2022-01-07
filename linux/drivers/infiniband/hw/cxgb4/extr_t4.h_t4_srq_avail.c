
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct t4_srq {int size; int in_use; } ;



__attribute__((used)) static inline u32 t4_srq_avail(struct t4_srq *srq)
{
 return srq->size - 1 - srq->in_use;
}
