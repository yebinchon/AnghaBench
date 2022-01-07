
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp {int dummy; } ;
struct i40iw_qp {int refcount; } ;


 int atomic_inc (int *) ;

void i40iw_add_ref(struct ib_qp *ibqp)
{
 struct i40iw_qp *iwqp = (struct i40iw_qp *)ibqp;

 atomic_inc(&iwqp->refcount);
}
