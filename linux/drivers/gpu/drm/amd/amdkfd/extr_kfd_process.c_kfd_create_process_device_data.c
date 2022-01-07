
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ evicted; int * pqm; int dqm; int priv_queue_list; int queues_list; } ;
struct kfd_process_device {int already_dequeued; int alloc_idr; int per_device_list; int bound; struct kfd_process* process; TYPE_1__ qpd; struct kfd_dev* dev; } ;
struct kfd_process {int per_device_data; int pqm; } ;
struct kfd_dev {int dqm; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PDD_UNBOUND ;
 int idr_init (int *) ;
 scalar_t__ init_doorbell_bitmap (TYPE_1__*,struct kfd_dev*) ;
 int kfree (struct kfd_process_device*) ;
 struct kfd_process_device* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pr_err (char*) ;

struct kfd_process_device *kfd_create_process_device_data(struct kfd_dev *dev,
       struct kfd_process *p)
{
 struct kfd_process_device *pdd = ((void*)0);

 pdd = kzalloc(sizeof(*pdd), GFP_KERNEL);
 if (!pdd)
  return ((void*)0);

 if (init_doorbell_bitmap(&pdd->qpd, dev)) {
  pr_err("Failed to init doorbell for process\n");
  kfree(pdd);
  return ((void*)0);
 }

 pdd->dev = dev;
 INIT_LIST_HEAD(&pdd->qpd.queues_list);
 INIT_LIST_HEAD(&pdd->qpd.priv_queue_list);
 pdd->qpd.dqm = dev->dqm;
 pdd->qpd.pqm = &p->pqm;
 pdd->qpd.evicted = 0;
 pdd->process = p;
 pdd->bound = PDD_UNBOUND;
 pdd->already_dequeued = 0;
 list_add(&pdd->per_device_list, &p->per_device_data);


 idr_init(&pdd->alloc_idr);

 return pdd;
}
