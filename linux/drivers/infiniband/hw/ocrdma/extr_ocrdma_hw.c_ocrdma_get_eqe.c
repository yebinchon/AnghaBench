
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocrdma_eqe {int dummy; } ;
struct TYPE_2__ {void* va; int tail; } ;
struct ocrdma_eq {TYPE_1__ q; } ;



__attribute__((used)) static inline void *ocrdma_get_eqe(struct ocrdma_eq *eq)
{
 return eq->q.va + (eq->q.tail * sizeof(struct ocrdma_eqe));
}
