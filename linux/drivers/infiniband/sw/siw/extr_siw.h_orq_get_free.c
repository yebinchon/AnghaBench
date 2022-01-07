
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_sqe {int flags; } ;
struct siw_qp {int dummy; } ;


 scalar_t__ READ_ONCE (int ) ;
 struct siw_sqe* orq_get_tail (struct siw_qp*) ;

__attribute__((used)) static inline struct siw_sqe *orq_get_free(struct siw_qp *qp)
{
 struct siw_sqe *orq_e = orq_get_tail(qp);

 if (orq_e && READ_ONCE(orq_e->flags) == 0)
  return orq_e;

 return ((void*)0);
}
