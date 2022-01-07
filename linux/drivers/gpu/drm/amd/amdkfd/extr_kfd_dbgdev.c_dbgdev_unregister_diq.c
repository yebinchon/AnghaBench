
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kfd_dbgdev {TYPE_3__* kq; int pqm; } ;
struct TYPE_6__ {TYPE_2__* queue; } ;
struct TYPE_4__ {int queue_id; } ;
struct TYPE_5__ {TYPE_1__ properties; } ;


 int pqm_destroy_queue (int ,int ) ;

__attribute__((used)) static int dbgdev_unregister_diq(struct kfd_dbgdev *dbgdev)
{

 int status;

 status = pqm_destroy_queue(dbgdev->pqm,
   dbgdev->kq->queue->properties.queue_id);
 dbgdev->kq = ((void*)0);

 return status;
}
