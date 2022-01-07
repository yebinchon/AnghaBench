
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hfi1_user_info {int uuid; int userversion; scalar_t__ subctxt_cnt; } ;
struct hfi1_filedata {int rec_cpu_num; int subctxt; } ;
struct hfi1_devdata {int flags; scalar_t__ num_user_contexts; int freectxts; int node; int pport; } ;
struct hfi1_ctxtdata {int jkey; int uuid; int comm; int wait; int flags; int userversion; int in_use_ctxts; TYPE_1__* sc; int rcvhdrqentsize; int numa_id; int ctxt; } ;
struct TYPE_7__ {int comm; int pid; } ;
struct TYPE_6__ {int sps_ctxts; } ;
struct TYPE_5__ {int hw_context; int sw_index; } ;


 int EBUSY ;
 int EIO ;
 int ENOMEM ;
 int HFI1_FROZEN ;
 int PROC ;
 int SC_USER ;
 int __set_bit (int ,int ) ;
 int aspm_disable_all (struct hfi1_devdata*) ;
 int cpu_to_node (int) ;
 TYPE_4__* current ;
 int current_uid () ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int generate_jkey (int ) ;
 int hfi1_cap_mask ;
 int hfi1_cdbg (int ,char*,int ,int ,...) ;
 int hfi1_create_ctxtdata (int ,int,struct hfi1_ctxtdata**) ;
 int hfi1_free_ctxt (struct hfi1_ctxtdata*) ;
 int hfi1_get_proc_affinity (int ) ;
 TYPE_3__ hfi1_stats ;
 int init_subctxts (struct hfi1_ctxtdata*,struct hfi1_user_info*) ;
 int init_waitqueue_head (int *) ;
 int memcpy (int ,int ,int) ;
 int numa_node_id () ;
 TYPE_1__* sc_alloc (struct hfi1_devdata*,int ,int ,int ) ;
 int sc_enable (TYPE_1__*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int allocate_ctxt(struct hfi1_filedata *fd, struct hfi1_devdata *dd,
    struct hfi1_user_info *uinfo,
    struct hfi1_ctxtdata **rcd)
{
 struct hfi1_ctxtdata *uctxt;
 int ret, numa;

 if (dd->flags & HFI1_FROZEN) {







  return -EIO;
 }

 if (!dd->freectxts)
  return -EBUSY;





 fd->rec_cpu_num = hfi1_get_proc_affinity(dd->node);
 if (fd->rec_cpu_num != -1)
  numa = cpu_to_node(fd->rec_cpu_num);
 else
  numa = numa_node_id();
 ret = hfi1_create_ctxtdata(dd->pport, numa, &uctxt);
 if (ret < 0) {
  dd_dev_err(dd, "user ctxtdata allocation failed\n");
  return ret;
 }
 hfi1_cdbg(PROC, "[%u:%u] pid %u assigned to CPU %d (NUMA %u)",
    uctxt->ctxt, fd->subctxt, current->pid, fd->rec_cpu_num,
    uctxt->numa_id);




 uctxt->sc = sc_alloc(dd, SC_USER, uctxt->rcvhdrqentsize, dd->node);
 if (!uctxt->sc) {
  ret = -ENOMEM;
  goto ctxdata_free;
 }
 hfi1_cdbg(PROC, "allocated send context %u(%u)\n", uctxt->sc->sw_index,
    uctxt->sc->hw_context);
 ret = sc_enable(uctxt->sc);
 if (ret)
  goto ctxdata_free;
 __set_bit(0, uctxt->in_use_ctxts);
 if (uinfo->subctxt_cnt)
  init_subctxts(uctxt, uinfo);
 uctxt->userversion = uinfo->userversion;
 uctxt->flags = hfi1_cap_mask;
 init_waitqueue_head(&uctxt->wait);
 strlcpy(uctxt->comm, current->comm, sizeof(uctxt->comm));
 memcpy(uctxt->uuid, uinfo->uuid, sizeof(uctxt->uuid));
 uctxt->jkey = generate_jkey(current_uid());
 hfi1_stats.sps_ctxts++;




 if (dd->freectxts-- == dd->num_user_contexts)
  aspm_disable_all(dd);

 *rcd = uctxt;

 return 0;

ctxdata_free:
 hfi1_free_ctxt(uctxt);
 return ret;
}
