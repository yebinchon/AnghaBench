
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; } ;
struct tid_rb_node {int rcventry; TYPE_2__* grp; int npages; int dma_addr; int phys; TYPE_1__ mmu; } ;
struct hfi1_filedata {int subctxt; struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_devdata {int dummy; } ;
struct hfi1_ctxtdata {int tid_group_list; int tid_used_list; int tid_full_list; int ctxt; struct hfi1_devdata* dd; } ;
struct TYPE_4__ {int used; int map; int base; int size; } ;


 int PT_INVALID_FLUSH ;
 int hfi1_put_tid (struct hfi1_devdata*,int,int ,int ,int ) ;
 int kfree (struct tid_rb_node*) ;
 int tid_group_move (TYPE_2__*,int *,int *) ;
 int trace_hfi1_exp_tid_unreg (int ,int ,int,int ,int ,int ,int ) ;
 int unpin_rcv_pages (struct hfi1_filedata*,int *,struct tid_rb_node*,int ,int ,int) ;

__attribute__((used)) static void clear_tid_node(struct hfi1_filedata *fd, struct tid_rb_node *node)
{
 struct hfi1_ctxtdata *uctxt = fd->uctxt;
 struct hfi1_devdata *dd = uctxt->dd;

 trace_hfi1_exp_tid_unreg(uctxt->ctxt, fd->subctxt, node->rcventry,
     node->npages, node->mmu.addr, node->phys,
     node->dma_addr);





 hfi1_put_tid(dd, node->rcventry, PT_INVALID_FLUSH, 0, 0);

 unpin_rcv_pages(fd, ((void*)0), node, 0, node->npages, 1);

 node->grp->used--;
 node->grp->map &= ~(1 << (node->rcventry - node->grp->base));

 if (node->grp->used == node->grp->size - 1)
  tid_group_move(node->grp, &uctxt->tid_full_list,
          &uctxt->tid_used_list);
 else if (!node->grp->used)
  tid_group_move(node->grp, &uctxt->tid_used_list,
          &uctxt->tid_group_list);
 kfree(node);
}
