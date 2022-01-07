
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_udata {int dummy; } ;
struct ib_cq {int device; } ;
struct i40iw_sc_cq {int dummy; } ;
struct i40iw_device {int dummy; } ;
struct i40iw_cq {struct i40iw_sc_cq sc_cq; } ;


 int cq_free_resources (struct i40iw_device*,struct i40iw_cq*) ;
 int i40iw_cq_wq_destroy (struct i40iw_device*,struct i40iw_sc_cq*) ;
 int i40iw_rem_devusecount (struct i40iw_device*) ;
 struct i40iw_cq* to_iwcq (struct ib_cq*) ;
 struct i40iw_device* to_iwdev (int ) ;

__attribute__((used)) static void i40iw_destroy_cq(struct ib_cq *ib_cq, struct ib_udata *udata)
{
 struct i40iw_cq *iwcq;
 struct i40iw_device *iwdev;
 struct i40iw_sc_cq *cq;

 iwcq = to_iwcq(ib_cq);
 iwdev = to_iwdev(ib_cq->device);
 cq = &iwcq->sc_cq;
 i40iw_cq_wq_destroy(iwdev, cq);
 cq_free_resources(iwdev, iwcq);
 i40iw_rem_devusecount(iwdev);
}
