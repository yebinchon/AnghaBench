
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i40iw_sc_qp {scalar_t__ back_qp; } ;
struct TYPE_2__ {int qp_num; } ;
struct i40iw_qp {int iwpd; struct i40iw_device* iwdev; TYPE_1__ ibqp; } ;
struct i40iw_device {int dummy; } ;
struct i40iw_cqp_request {scalar_t__ param; } ;


 int i40iw_free_qp_resources (struct i40iw_device*,struct i40iw_qp*,int ) ;
 int i40iw_rem_devusecount (struct i40iw_device*) ;
 int i40iw_rem_pdusecount (int ,struct i40iw_device*) ;

__attribute__((used)) static void i40iw_free_qp(struct i40iw_cqp_request *cqp_request, u32 num)
{
 struct i40iw_sc_qp *qp = (struct i40iw_sc_qp *)cqp_request->param;
 struct i40iw_qp *iwqp = (struct i40iw_qp *)qp->back_qp;
 struct i40iw_device *iwdev;
 u32 qp_num = iwqp->ibqp.qp_num;

 iwdev = iwqp->iwdev;

 i40iw_rem_pdusecount(iwqp->iwpd, iwdev);
 i40iw_free_qp_resources(iwdev, iwqp, qp_num);
 i40iw_rem_devusecount(iwdev);
}
