
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_manager {int allocated; int lock; int ib_buffer_obj; TYPE_1__* dqm; } ;
struct TYPE_2__ {int dev; } ;


 int kfd_gtt_sa_free (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void pm_release_ib(struct packet_manager *pm)
{
 mutex_lock(&pm->lock);
 if (pm->allocated) {
  kfd_gtt_sa_free(pm->dqm->dev, pm->ib_buffer_obj);
  pm->allocated = 0;
 }
 mutex_unlock(&pm->lock);
}
