
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_vnic_res_chunk {int dummy; } ;
struct usnic_ib_qp_grp {int lock; } ;


 int USNIC_VNIC_RES_TYPE_RQ ;
 int lockdep_assert_held (int *) ;
 struct usnic_vnic_res_chunk* usnic_ib_qp_grp_get_chunk (struct usnic_ib_qp_grp*,int ) ;

__attribute__((used)) static struct usnic_vnic_res_chunk *
get_qp_res_chunk(struct usnic_ib_qp_grp *qp_grp)
{
 lockdep_assert_held(&qp_grp->lock);




 return usnic_ib_qp_grp_get_chunk(qp_grp, USNIC_VNIC_RES_TYPE_RQ);
}
