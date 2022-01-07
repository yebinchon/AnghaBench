
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ib_mr {scalar_t__ rkey; scalar_t__ lkey; } ;
struct usnic_ib_mr {struct ib_mr ibmr; scalar_t__ umem; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;
struct TYPE_2__ {int umem_pd; } ;


 int EFAULT ;
 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int kfree (struct usnic_ib_mr*) ;
 struct usnic_ib_mr* kzalloc (int,int ) ;
 TYPE_1__* to_upd (struct ib_pd*) ;
 int usnic_dbg (char*,int ,int ,int ) ;
 scalar_t__ usnic_uiom_reg_get (int ,int ,int ,int,int ) ;

struct ib_mr *usnic_ib_reg_mr(struct ib_pd *pd, u64 start, u64 length,
     u64 virt_addr, int access_flags,
     struct ib_udata *udata)
{
 struct usnic_ib_mr *mr;
 int err;

 usnic_dbg("start 0x%llx va 0x%llx length 0x%llx\n", start,
   virt_addr, length);

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr)
  return ERR_PTR(-ENOMEM);

 mr->umem = usnic_uiom_reg_get(to_upd(pd)->umem_pd, start, length,
     access_flags, 0);
 if (IS_ERR_OR_NULL(mr->umem)) {
  err = mr->umem ? PTR_ERR(mr->umem) : -EFAULT;
  goto err_free;
 }

 mr->ibmr.lkey = mr->ibmr.rkey = 0;
 return &mr->ibmr;

err_free:
 kfree(mr);
 return ERR_PTR(err);
}
