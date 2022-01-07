
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_ib_mr {TYPE_1__* umem; } ;
struct ib_udata {int dummy; } ;
struct ib_mr {int dummy; } ;
struct TYPE_2__ {int length; int va; } ;


 int kfree (struct usnic_ib_mr*) ;
 struct usnic_ib_mr* to_umr (struct ib_mr*) ;
 int usnic_dbg (char*,int ,int ) ;
 int usnic_uiom_reg_release (TYPE_1__*) ;

int usnic_ib_dereg_mr(struct ib_mr *ibmr, struct ib_udata *udata)
{
 struct usnic_ib_mr *mr = to_umr(ibmr);

 usnic_dbg("va 0x%lx length 0x%zx\n", mr->umem->va, mr->umem->length);

 usnic_uiom_reg_release(mr->umem);
 kfree(mr);
 return 0;
}
