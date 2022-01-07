
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ child_relid; } ;
struct vmbus_channel {scalar_t__ target_cpu; scalar_t__ affinity_policy; TYPE_1__ offermsg; int alloced_cpus_in_node; int lock; int sc_list; struct vmbus_channel* primary_channel; int listentry; int rescind; } ;
struct TYPE_4__ {int channel_mutex; } ;


 int BUG_ON (int) ;
 scalar_t__ HV_LOCALIZED ;
 scalar_t__ INVALID_RELID ;
 int cpumask_clear_cpu (scalar_t__,int *) ;
 int free_channel (struct vmbus_channel*) ;
 scalar_t__ get_cpu () ;
 int list_del (int *) ;
 int mutex_is_locked (int *) ;
 int percpu_channel_deq (struct vmbus_channel*) ;
 int put_cpu () ;
 int smp_call_function_single (scalar_t__,int (*) (struct vmbus_channel*),struct vmbus_channel*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__ vmbus_connection ;
 int vmbus_release_relid (scalar_t__) ;

void hv_process_channel_removal(struct vmbus_channel *channel)
{
 struct vmbus_channel *primary_channel;
 unsigned long flags;

 BUG_ON(!mutex_is_locked(&vmbus_connection.channel_mutex));
 BUG_ON(!channel->rescind);

 if (channel->target_cpu != get_cpu()) {
  put_cpu();
  smp_call_function_single(channel->target_cpu,
      percpu_channel_deq, channel, 1);
 } else {
  percpu_channel_deq(channel);
  put_cpu();
 }

 if (channel->primary_channel == ((void*)0)) {
  list_del(&channel->listentry);

  primary_channel = channel;
 } else {
  primary_channel = channel->primary_channel;
  spin_lock_irqsave(&primary_channel->lock, flags);
  list_del(&channel->sc_list);
  spin_unlock_irqrestore(&primary_channel->lock, flags);
 }





 if (channel->affinity_policy == HV_LOCALIZED)
  cpumask_clear_cpu(channel->target_cpu,
      &primary_channel->alloced_cpus_in_node);
 if (channel->offermsg.child_relid != INVALID_RELID)
  vmbus_release_relid(channel->offermsg.child_relid);

 free_channel(channel);
}
