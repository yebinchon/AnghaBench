
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_filedata {struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_devdata {int dummy; } ;
struct hfi1_ctxtdata {int wait; int event_flags; scalar_t__ subctxt_cnt; int sc; struct hfi1_devdata* dd; } ;


 int HFI1_CTXT_BASE_FAILED ;
 int HFI1_CTXT_BASE_UNINIT ;
 int clear_bit (int ,int *) ;
 int hfi1_alloc_ctxt_rcv_groups (struct hfi1_ctxtdata*) ;
 int hfi1_create_rcvhdrq (struct hfi1_devdata*,struct hfi1_ctxtdata*) ;
 int hfi1_init_ctxt (int ) ;
 int hfi1_rcd_get (struct hfi1_ctxtdata*) ;
 int hfi1_setup_eagerbufs (struct hfi1_ctxtdata*) ;
 int init_user_ctxt (struct hfi1_filedata*,struct hfi1_ctxtdata*) ;
 int set_bit (int ,int *) ;
 int setup_subctxt (struct hfi1_ctxtdata*) ;
 int user_init (struct hfi1_ctxtdata*) ;
 int wake_up (int *) ;

__attribute__((used)) static int setup_base_ctxt(struct hfi1_filedata *fd,
      struct hfi1_ctxtdata *uctxt)
{
 struct hfi1_devdata *dd = uctxt->dd;
 int ret = 0;

 hfi1_init_ctxt(uctxt->sc);


 ret = hfi1_create_rcvhdrq(dd, uctxt);
 if (ret)
  goto done;

 ret = hfi1_setup_eagerbufs(uctxt);
 if (ret)
  goto done;


 if (uctxt->subctxt_cnt)
  ret = setup_subctxt(uctxt);
 if (ret)
  goto done;

 ret = hfi1_alloc_ctxt_rcv_groups(uctxt);
 if (ret)
  goto done;

 ret = init_user_ctxt(fd, uctxt);
 if (ret)
  goto done;

 user_init(uctxt);


 fd->uctxt = uctxt;
 hfi1_rcd_get(uctxt);

done:
 if (uctxt->subctxt_cnt) {




  if (ret)
   set_bit(HFI1_CTXT_BASE_FAILED, &uctxt->event_flags);





  clear_bit(HFI1_CTXT_BASE_UNINIT, &uctxt->event_flags);
  wake_up(&uctxt->wait);
 }

 return ret;
}
