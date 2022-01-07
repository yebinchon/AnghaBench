
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_use; } ;
struct t4_wq {TYPE_1__ sq; } ;



__attribute__((used)) static inline int t4_sq_empty(struct t4_wq *wq)
{
 return wq->sq.in_use == 0;
}
