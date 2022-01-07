
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct scheduling_resources {int dummy; } ;
struct packet_manager {int lock; TYPE_3__* priv_queue; TYPE_1__* pmf; } ;
struct TYPE_7__ {int (* rollback_packet ) (TYPE_3__*) ;int (* submit_packet ) (TYPE_3__*) ;int (* acquire_packet_buffer ) (TYPE_3__*,int,unsigned int**) ;} ;
struct TYPE_8__ {TYPE_2__ ops; } ;
struct TYPE_6__ {int set_resources_size; int (* set_resources ) (struct packet_manager*,int*,struct scheduling_resources*) ;} ;


 int ENOMEM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int stub1 (TYPE_3__*,int,unsigned int**) ;
 int stub2 (struct packet_manager*,int*,struct scheduling_resources*) ;
 int stub3 (TYPE_3__*) ;
 int stub4 (TYPE_3__*) ;

int pm_send_set_resources(struct packet_manager *pm,
    struct scheduling_resources *res)
{
 uint32_t *buffer, size;
 int retval = 0;

 size = pm->pmf->set_resources_size;
 mutex_lock(&pm->lock);
 pm->priv_queue->ops.acquire_packet_buffer(pm->priv_queue,
     size / sizeof(uint32_t),
     (unsigned int **)&buffer);
 if (!buffer) {
  pr_err("Failed to allocate buffer on kernel queue\n");
  retval = -ENOMEM;
  goto out;
 }

 retval = pm->pmf->set_resources(pm, buffer, res);
 if (!retval)
  pm->priv_queue->ops.submit_packet(pm->priv_queue);
 else
  pm->priv_queue->ops.rollback_packet(pm->priv_queue);

out:
 mutex_unlock(&pm->lock);

 return retval;
}
