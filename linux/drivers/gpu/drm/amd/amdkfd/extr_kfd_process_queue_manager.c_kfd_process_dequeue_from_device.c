
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kfd_process_device {int already_dequeued; int qpd; struct kfd_dev* dev; } ;
struct kfd_dev {TYPE_2__* dqm; } ;
struct TYPE_3__ {int (* process_termination ) (TYPE_2__*,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int stub1 (TYPE_2__*,int *) ;

void kfd_process_dequeue_from_device(struct kfd_process_device *pdd)
{
 struct kfd_dev *dev = pdd->dev;

 if (pdd->already_dequeued)
  return;

 dev->dqm->ops.process_termination(dev->dqm, &pdd->qpd);
 pdd->already_dequeued = 1;
}
