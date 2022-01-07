
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int size; } ;
struct hfi1_ctxtdata {int subctxt_cnt; int * subctxt_uregbase; int * subctxt_rcvhdr_base; void* subctxt_rcvegrbuf; TYPE_1__ egrbufs; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int rcvhdrq_size (struct hfi1_ctxtdata*) ;
 int vfree (int *) ;
 void* vmalloc_user (int) ;

__attribute__((used)) static int setup_subctxt(struct hfi1_ctxtdata *uctxt)
{
 int ret = 0;
 u16 num_subctxts = uctxt->subctxt_cnt;

 uctxt->subctxt_uregbase = vmalloc_user(PAGE_SIZE);
 if (!uctxt->subctxt_uregbase)
  return -ENOMEM;


 uctxt->subctxt_rcvhdr_base = vmalloc_user(rcvhdrq_size(uctxt) *
        num_subctxts);
 if (!uctxt->subctxt_rcvhdr_base) {
  ret = -ENOMEM;
  goto bail_ureg;
 }

 uctxt->subctxt_rcvegrbuf = vmalloc_user(uctxt->egrbufs.size *
      num_subctxts);
 if (!uctxt->subctxt_rcvegrbuf) {
  ret = -ENOMEM;
  goto bail_rhdr;
 }

 return 0;

bail_rhdr:
 vfree(uctxt->subctxt_rcvhdr_base);
 uctxt->subctxt_rcvhdr_base = ((void*)0);
bail_ureg:
 vfree(uctxt->subctxt_uregbase);
 uctxt->subctxt_uregbase = ((void*)0);

 return ret;
}
