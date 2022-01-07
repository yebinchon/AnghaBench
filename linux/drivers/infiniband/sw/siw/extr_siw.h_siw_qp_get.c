
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_qp {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void siw_qp_get(struct siw_qp *qp)
{
 kref_get(&qp->ref);
}
