
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfreq_freqs {int dummy; } ;
struct devfreq {int transition_notifier_list; } ;




 int EINVAL ;
 int srcu_notifier_call_chain (int *,int const,struct devfreq_freqs*) ;

__attribute__((used)) static int devfreq_notify_transition(struct devfreq *devfreq,
  struct devfreq_freqs *freqs, unsigned int state)
{
 if (!devfreq)
  return -EINVAL;

 switch (state) {
 case 128:
  srcu_notifier_call_chain(&devfreq->transition_notifier_list,
    128, freqs);
  break;

 case 129:
  srcu_notifier_call_chain(&devfreq->transition_notifier_list,
    129, freqs);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
