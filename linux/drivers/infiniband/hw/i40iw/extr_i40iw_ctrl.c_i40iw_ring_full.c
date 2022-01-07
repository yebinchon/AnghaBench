
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_cqp {int sq_ring; } ;


 int I40IW_RING_FULL_ERR (int ) ;

__attribute__((used)) static bool i40iw_ring_full(struct i40iw_sc_cqp *cqp)
{
 return I40IW_RING_FULL_ERR(cqp->sq_ring);
}
