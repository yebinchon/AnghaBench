
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char compcode; } ;
union cpt_res_s {TYPE_1__ s; } ;
struct pending_queue {size_t front; int lock; int pending_count; struct pending_entry* head; } ;
struct pending_qinfo {struct pending_queue* queue; } ;
struct pending_entry {int busy; int callback_arg; int (* callback ) (unsigned char,int ) ;int * post_arg; int * completion_addr; } ;
struct pci_dev {int dev; } ;
struct cpt_vf {struct pci_dev* pdev; } ;
struct cpt_info_buffer {unsigned char* alternate_caddr; scalar_t__ extra_time; int cptvf; scalar_t__ time_in; } ;


 unsigned char COMPLETION_CODE_INIT ;
 int CPT_COMMAND_TIMEOUT ;
 unsigned char CPT_COMP_E_FAULT ;
 unsigned char CPT_COMP_E_SWERR ;
 int HZ ;
 scalar_t__ TIME_IN_RESET_COUNT ;
 int atomic64_dec (int *) ;
 int dev_err (int *,char*,...) ;
 int do_post_process (int ,struct cpt_info_buffer*) ;
 int do_request_cleanup (struct cpt_vf*,struct cpt_info_buffer*) ;
 scalar_t__ jiffies ;
 int pending_queue_inc_front (struct pending_qinfo*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (unsigned char,int ) ;
 scalar_t__ time_after_eq (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void process_pending_queue(struct cpt_vf *cptvf,
      struct pending_qinfo *pqinfo,
      int qno)
{
 struct pci_dev *pdev = cptvf->pdev;
 struct pending_queue *pqueue = &pqinfo->queue[qno];
 struct pending_entry *pentry = ((void*)0);
 struct cpt_info_buffer *info = ((void*)0);
 union cpt_res_s *status = ((void*)0);
 unsigned char ccode;

 while (1) {
  spin_lock_bh(&pqueue->lock);
  pentry = &pqueue->head[pqueue->front];
  if (unlikely(!pentry->busy)) {
   spin_unlock_bh(&pqueue->lock);
   break;
  }

  info = (struct cpt_info_buffer *)pentry->post_arg;
  if (unlikely(!info)) {
   dev_err(&pdev->dev, "Pending Entry post arg NULL\n");
   pending_queue_inc_front(pqinfo, qno);
   spin_unlock_bh(&pqueue->lock);
   continue;
  }

  status = (union cpt_res_s *)pentry->completion_addr;
  ccode = status->s.compcode;
  if ((status->s.compcode == CPT_COMP_E_FAULT) ||
      (status->s.compcode == CPT_COMP_E_SWERR)) {
   dev_err(&pdev->dev, "Request failed with %s\n",
    (status->s.compcode == CPT_COMP_E_FAULT) ?
    "DMA Fault" : "Software error");
   pentry->completion_addr = ((void*)0);
   pentry->busy = 0;
   atomic64_dec((&pqueue->pending_count));
   pentry->post_arg = ((void*)0);
   pending_queue_inc_front(pqinfo, qno);
   do_request_cleanup(cptvf, info);
   spin_unlock_bh(&pqueue->lock);
   break;
  } else if (status->s.compcode == COMPLETION_CODE_INIT) {

   if (time_after_eq(jiffies,
       (info->time_in +
       (CPT_COMMAND_TIMEOUT * HZ)))) {
    dev_err(&pdev->dev, "Request timed out");
    pentry->completion_addr = ((void*)0);
    pentry->busy = 0;
    atomic64_dec((&pqueue->pending_count));
    pentry->post_arg = ((void*)0);
    pending_queue_inc_front(pqinfo, qno);
    do_request_cleanup(cptvf, info);
    spin_unlock_bh(&pqueue->lock);
    break;
   } else if ((*info->alternate_caddr ==
    (~COMPLETION_CODE_INIT)) &&
    (info->extra_time < TIME_IN_RESET_COUNT)) {
    info->time_in = jiffies;
    info->extra_time++;
    spin_unlock_bh(&pqueue->lock);
    break;
   }
  }

  pentry->completion_addr = ((void*)0);
  pentry->busy = 0;
  pentry->post_arg = ((void*)0);
  atomic64_dec((&pqueue->pending_count));
  pending_queue_inc_front(pqinfo, qno);
  spin_unlock_bh(&pqueue->lock);

  do_post_process(info->cptvf, info);




  pentry->callback(ccode, pentry->callback_arg);
 }
}
