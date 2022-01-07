
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int notifier_call; } ;
struct devfreq_passive_data {struct devfreq* this; struct notifier_block nb; scalar_t__ parent; } ;
struct devfreq {scalar_t__ data; } ;




 int DEVFREQ_TRANSITION_NOTIFIER ;
 int EPROBE_DEFER ;
 int WARN_ON (int ) ;
 int devfreq_passive_notifier_call ;
 int devfreq_register_notifier (struct devfreq*,struct notifier_block*,int ) ;
 int devfreq_unregister_notifier (struct devfreq*,struct notifier_block*,int ) ;

__attribute__((used)) static int devfreq_passive_event_handler(struct devfreq *devfreq,
    unsigned int event, void *data)
{
 struct devfreq_passive_data *p_data
   = (struct devfreq_passive_data *)devfreq->data;
 struct devfreq *parent = (struct devfreq *)p_data->parent;
 struct notifier_block *nb = &p_data->nb;
 int ret = 0;

 if (!parent)
  return -EPROBE_DEFER;

 switch (event) {
 case 129:
  if (!p_data->this)
   p_data->this = devfreq;

  nb->notifier_call = devfreq_passive_notifier_call;
  ret = devfreq_register_notifier(parent, nb,
     DEVFREQ_TRANSITION_NOTIFIER);
  break;
 case 128:
  WARN_ON(devfreq_unregister_notifier(parent, nb,
     DEVFREQ_TRANSITION_NOTIFIER));
  break;
 default:
  break;
 }

 return ret;
}
