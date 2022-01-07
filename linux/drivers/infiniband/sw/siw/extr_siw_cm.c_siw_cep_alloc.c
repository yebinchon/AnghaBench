
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_device {int lock; int cep_list; } ;
struct siw_cep {int enhanced_rdma_conn_est; int devq; struct siw_device* sdev; int lock; int waitq; int state; int ref; int work_freelist; int listenq; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SIW_EPSTATE_IDLE ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;
 struct siw_cep* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int siw_dbg_cep (struct siw_cep*,char*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct siw_cep *siw_cep_alloc(struct siw_device *sdev)
{
 struct siw_cep *cep = kzalloc(sizeof(*cep), GFP_KERNEL);
 unsigned long flags;

 if (!cep)
  return ((void*)0);

 INIT_LIST_HEAD(&cep->listenq);
 INIT_LIST_HEAD(&cep->devq);
 INIT_LIST_HEAD(&cep->work_freelist);

 kref_init(&cep->ref);
 cep->state = SIW_EPSTATE_IDLE;
 init_waitqueue_head(&cep->waitq);
 spin_lock_init(&cep->lock);
 cep->sdev = sdev;
 cep->enhanced_rdma_conn_est = 0;

 spin_lock_irqsave(&sdev->lock, flags);
 list_add_tail(&cep->devq, &sdev->cep_list);
 spin_unlock_irqrestore(&sdev->lock, flags);

 siw_dbg_cep(cep, "new endpoint\n");
 return cep;
}
