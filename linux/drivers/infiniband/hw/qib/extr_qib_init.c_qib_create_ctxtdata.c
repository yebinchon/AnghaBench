
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {size_t first_user_ctxt; int rcvegrbufsize; int (* f_init_ctxt ) (struct qib_ctxtdata*) ;struct qib_ctxtdata** rcd; } ;
struct qib_ctxtdata {int node_id; int cnt; size_t ctxt; int rcvegrbuf_size; int rcvegrbufs_perchunk; int rcvegrbuf_chunks; int rcvegrcnt; int rcvegrbufs_perchunk_shift; void* opstats; struct qib_devdata* dd; struct qib_pportdata* ppd; int qp_wait_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ilog2 (int) ;
 int kfree (struct qib_ctxtdata*) ;
 void* kzalloc_node (int,int ,int) ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int stub1 (struct qib_ctxtdata*) ;

struct qib_ctxtdata *qib_create_ctxtdata(struct qib_pportdata *ppd, u32 ctxt,
 int node_id)
{
 struct qib_devdata *dd = ppd->dd;
 struct qib_ctxtdata *rcd;

 rcd = kzalloc_node(sizeof(*rcd), GFP_KERNEL, node_id);
 if (rcd) {
  INIT_LIST_HEAD(&rcd->qp_wait_list);
  rcd->node_id = node_id;
  rcd->ppd = ppd;
  rcd->dd = dd;
  rcd->cnt = 1;
  rcd->ctxt = ctxt;
  dd->rcd[ctxt] = rcd;
  dd->f_init_ctxt(rcd);
  rcd->rcvegrbuf_size = 0x8000;
  rcd->rcvegrbufs_perchunk =
   rcd->rcvegrbuf_size / dd->rcvegrbufsize;
  rcd->rcvegrbuf_chunks = (rcd->rcvegrcnt +
   rcd->rcvegrbufs_perchunk - 1) /
   rcd->rcvegrbufs_perchunk;
  rcd->rcvegrbufs_perchunk_shift =
   ilog2(rcd->rcvegrbufs_perchunk);
 }
 return rcd;
}
