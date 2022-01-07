
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_cqp_request {int refcount; } ;
struct i40iw_cqp {int dummy; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int i40iw_free_cqp_request (struct i40iw_cqp*,struct i40iw_cqp_request*) ;

void i40iw_put_cqp_request(struct i40iw_cqp *cqp,
      struct i40iw_cqp_request *cqp_request)
{
 if (atomic_dec_and_test(&cqp_request->refcount))
  i40iw_free_cqp_request(cqp, cqp_request);
}
