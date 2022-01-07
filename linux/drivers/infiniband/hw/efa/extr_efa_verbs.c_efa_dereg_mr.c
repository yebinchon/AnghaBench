
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_mr {int lkey; int device; } ;
struct TYPE_2__ {int lkey; } ;
struct efa_mr {int umem; TYPE_1__ ibmr; } ;
struct efa_dev {int edev; int ibdev; } ;
struct efa_com_dereg_mr_params {int l_key; } ;


 int efa_com_dereg_mr (int *,struct efa_com_dereg_mr_params*) ;
 int ib_umem_release (int ) ;
 int ibdev_dbg (int *,char*,int ) ;
 int kfree (struct efa_mr*) ;
 struct efa_dev* to_edev (int ) ;
 struct efa_mr* to_emr (struct ib_mr*) ;

int efa_dereg_mr(struct ib_mr *ibmr, struct ib_udata *udata)
{
 struct efa_dev *dev = to_edev(ibmr->device);
 struct efa_com_dereg_mr_params params;
 struct efa_mr *mr = to_emr(ibmr);
 int err;

 ibdev_dbg(&dev->ibdev, "Deregister mr[%d]\n", ibmr->lkey);

 params.l_key = mr->ibmr.lkey;
 err = efa_com_dereg_mr(&dev->edev, &params);
 if (err)
  return err;

 ib_umem_release(mr->umem);
 kfree(mr);

 return 0;
}
