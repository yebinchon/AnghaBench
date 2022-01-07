
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct devfreq_freqs {unsigned long old; unsigned long new; } ;
struct TYPE_4__ {int parent; } ;
struct devfreq {unsigned long previous_freq; unsigned long resume_freq; scalar_t__ suspend_freq; TYPE_2__ dev; TYPE_1__* profile; } ;
struct TYPE_3__ {int (* target ) (int ,unsigned long*,int ) ;int (* get_cur_freq ) (int ,unsigned long*) ;} ;


 int DEVFREQ_POSTCHANGE ;
 int DEVFREQ_PRECHANGE ;
 int dev_err (TYPE_2__*,char*) ;
 int devfreq_notify_transition (struct devfreq*,struct devfreq_freqs*,int ) ;
 scalar_t__ devfreq_update_status (struct devfreq*,unsigned long) ;
 int stub1 (int ,unsigned long*) ;
 int stub2 (int ,unsigned long*,int ) ;

__attribute__((used)) static int devfreq_set_target(struct devfreq *devfreq, unsigned long new_freq,
         u32 flags)
{
 struct devfreq_freqs freqs;
 unsigned long cur_freq;
 int err = 0;

 if (devfreq->profile->get_cur_freq)
  devfreq->profile->get_cur_freq(devfreq->dev.parent, &cur_freq);
 else
  cur_freq = devfreq->previous_freq;

 freqs.old = cur_freq;
 freqs.new = new_freq;
 devfreq_notify_transition(devfreq, &freqs, DEVFREQ_PRECHANGE);

 err = devfreq->profile->target(devfreq->dev.parent, &new_freq, flags);
 if (err) {
  freqs.new = cur_freq;
  devfreq_notify_transition(devfreq, &freqs, DEVFREQ_POSTCHANGE);
  return err;
 }

 freqs.new = new_freq;
 devfreq_notify_transition(devfreq, &freqs, DEVFREQ_POSTCHANGE);

 if (devfreq_update_status(devfreq, new_freq))
  dev_err(&devfreq->dev,
   "Couldn't update frequency transition information.\n");

 devfreq->previous_freq = new_freq;

 if (devfreq->suspend_freq)
  devfreq->resume_freq = cur_freq;

 return err;
}
