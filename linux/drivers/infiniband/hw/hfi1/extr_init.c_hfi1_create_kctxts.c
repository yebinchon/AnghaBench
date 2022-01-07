
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct hfi1_devdata {size_t first_dyn_alloc_ctxt; int * rcd; int pport; int node; int num_rcv_contexts; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int hfi1_create_kctxt (struct hfi1_devdata*,int ) ;
 int hfi1_free_ctxt (int ) ;
 int * kcalloc_node (int ,int,int ,int ) ;
 int kfree (int *) ;

int hfi1_create_kctxts(struct hfi1_devdata *dd)
{
 u16 i;
 int ret;

 dd->rcd = kcalloc_node(dd->num_rcv_contexts, sizeof(*dd->rcd),
          GFP_KERNEL, dd->node);
 if (!dd->rcd)
  return -ENOMEM;

 for (i = 0; i < dd->first_dyn_alloc_ctxt; ++i) {
  ret = hfi1_create_kctxt(dd, dd->pport);
  if (ret)
   goto bail;
 }

 return 0;
bail:
 for (i = 0; dd->rcd && i < dd->first_dyn_alloc_ctxt; ++i)
  hfi1_free_ctxt(dd->rcd[i]);


 kfree(dd->rcd);
 dd->rcd = ((void*)0);
 return ret;
}
