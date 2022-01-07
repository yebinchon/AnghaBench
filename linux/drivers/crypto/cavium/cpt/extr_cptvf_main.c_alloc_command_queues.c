
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct pci_dev {int dev; } ;
struct cpt_vf {int qsize; int nr_queues; struct pci_dev* pdev; } ;
struct command_queue {scalar_t__ nchunks; int lock; struct command_chunk* qhead; int chead; } ;
struct command_qinfo {size_t cmd_size; size_t qchunksize; struct command_queue* queue; } ;
struct command_chunk {size_t size; scalar_t__ dma_addr; int * head; int nextchunk; } ;


 int CPT_NEXT_CHUNK_PTR_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int dev_err (int *,char*,int,scalar_t__) ;
 scalar_t__ dma_alloc_coherent (int *,size_t,scalar_t__*,int ) ;
 int free_command_queues (struct cpt_vf*,struct command_qinfo*) ;
 int hlist_add_behind (int *,int *) ;
 int hlist_add_head (int *,int *) ;
 int kfree (struct command_chunk*) ;
 struct command_chunk* kzalloc (int,int ) ;
 int min (size_t,size_t) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int alloc_command_queues(struct cpt_vf *cptvf,
    struct command_qinfo *cqinfo, size_t cmd_size,
    u32 qlen)
{
 int i;
 size_t q_size;
 struct command_queue *queue = ((void*)0);
 struct pci_dev *pdev = cptvf->pdev;


 cqinfo->cmd_size = cmd_size;

 cptvf->qsize = min(qlen, cqinfo->qchunksize) *
   CPT_NEXT_CHUNK_PTR_SIZE + 1;

 q_size = qlen * cqinfo->cmd_size;


 for (i = 0; i < cptvf->nr_queues; i++) {
  size_t c_size = 0;
  size_t rem_q_size = q_size;
  struct command_chunk *curr = ((void*)0), *first = ((void*)0), *last = ((void*)0);
  u32 qcsize_bytes = cqinfo->qchunksize * cqinfo->cmd_size;

  queue = &cqinfo->queue[i];
  INIT_HLIST_HEAD(&cqinfo->queue[i].chead);
  do {
   curr = kzalloc(sizeof(*curr), GFP_KERNEL);
   if (!curr)
    goto cmd_qfail;

   c_size = (rem_q_size > qcsize_bytes) ? qcsize_bytes :
     rem_q_size;
   curr->head = (u8 *)dma_alloc_coherent(&pdev->dev,
             c_size + CPT_NEXT_CHUNK_PTR_SIZE,
             &curr->dma_addr,
             GFP_KERNEL);
   if (!curr->head) {
    dev_err(&pdev->dev, "Command Q (%d) chunk (%d) allocation failed\n",
     i, queue->nchunks);
    kfree(curr);
    goto cmd_qfail;
   }

   curr->size = c_size;
   if (queue->nchunks == 0) {
    hlist_add_head(&curr->nextchunk,
            &cqinfo->queue[i].chead);
    first = curr;
   } else {
    hlist_add_behind(&curr->nextchunk,
       &last->nextchunk);
   }

   queue->nchunks++;
   rem_q_size -= c_size;
   if (last)
    *((u64 *)(&last->head[last->size])) = (u64)curr->dma_addr;

   last = curr;
  } while (rem_q_size);



  curr = first;
  *((u64 *)(&last->head[last->size])) = (u64)curr->dma_addr;
  queue->qhead = curr;
  spin_lock_init(&queue->lock);
 }
 return 0;

cmd_qfail:
 free_command_queues(cptvf, cqinfo);
 return -ENOMEM;
}
