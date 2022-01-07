
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct devfreq {unsigned long previous_freq; int lock; TYPE_3__ dev; TYPE_1__* profile; TYPE_2__* governor; } ;
struct TYPE_5__ {int (* get_target_freq ) (struct devfreq*,unsigned long*) ;} ;
struct TYPE_4__ {int (* target ) (int ,unsigned long*,int ) ;scalar_t__ freq_table; } ;


 int EINVAL ;
 int SINGLE_DEPTH_NESTING ;
 int dev_err (TYPE_3__*,char*) ;
 scalar_t__ devfreq_update_status (struct devfreq*,unsigned long) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int stub1 (struct devfreq*,unsigned long*) ;
 int stub2 (int ,unsigned long*,int ) ;

__attribute__((used)) static int update_devfreq_passive(struct devfreq *devfreq, unsigned long freq)
{
 int ret;

 if (!devfreq->governor)
  return -EINVAL;

 mutex_lock_nested(&devfreq->lock, SINGLE_DEPTH_NESTING);

 ret = devfreq->governor->get_target_freq(devfreq, &freq);
 if (ret < 0)
  goto out;

 ret = devfreq->profile->target(devfreq->dev.parent, &freq, 0);
 if (ret < 0)
  goto out;

 if (devfreq->profile->freq_table
  && (devfreq_update_status(devfreq, freq)))
  dev_err(&devfreq->dev,
   "Couldn't update frequency transition information.\n");

 devfreq->previous_freq = freq;

out:
 mutex_unlock(&devfreq->lock);

 return 0;
}
