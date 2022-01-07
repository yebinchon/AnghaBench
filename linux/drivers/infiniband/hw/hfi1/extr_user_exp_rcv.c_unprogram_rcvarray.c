
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct tid_rb_node {scalar_t__ rcventry; int mmu; struct tid_group* grp; } ;
struct tid_group {int dummy; } ;
struct hfi1_filedata {int handler; struct tid_rb_node** entry_to_rb; struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_devdata {int dummy; } ;
struct hfi1_ctxtdata {scalar_t__ expected_count; scalar_t__ expected_base; int ctxt; struct hfi1_devdata* dd; } ;


 int CTRL ;
 int EBADF ;
 int EINVAL ;
 int EXP_TID_GET (scalar_t__,int ) ;
 int IDX ;
 int cacheless_tid_rb_remove (struct hfi1_filedata*,struct tid_rb_node*) ;
 int dd_dev_err (struct hfi1_devdata*,char*,scalar_t__,int ) ;
 int hfi1_mmu_rb_remove (int ,int *) ;

__attribute__((used)) static int unprogram_rcvarray(struct hfi1_filedata *fd, u32 tidinfo,
         struct tid_group **grp)
{
 struct hfi1_ctxtdata *uctxt = fd->uctxt;
 struct hfi1_devdata *dd = uctxt->dd;
 struct tid_rb_node *node;
 u8 tidctrl = EXP_TID_GET(tidinfo, CTRL);
 u32 tididx = EXP_TID_GET(tidinfo, IDX) << 1, rcventry;

 if (tididx >= uctxt->expected_count) {
  dd_dev_err(dd, "Invalid RcvArray entry (%u) index for ctxt %u\n",
      tididx, uctxt->ctxt);
  return -EINVAL;
 }

 if (tidctrl == 0x3)
  return -EINVAL;

 rcventry = tididx + (tidctrl - 1);

 node = fd->entry_to_rb[rcventry];
 if (!node || node->rcventry != (uctxt->expected_base + rcventry))
  return -EBADF;

 if (grp)
  *grp = node->grp;

 if (!fd->handler)
  cacheless_tid_rb_remove(fd, node);
 else
  hfi1_mmu_rb_remove(fd->handler, &node->mmu);

 return 0;
}
