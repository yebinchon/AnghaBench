
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct iio_sw_trigger {TYPE_2__* trigger; } ;
struct TYPE_9__ {int function; } ;
struct iio_hrtimer_info {int sampling_frequency; int period; struct iio_sw_trigger swt; TYPE_6__ timer; } ;
struct TYPE_7__ {int groups; } ;
struct TYPE_8__ {TYPE_1__ dev; int * ops; } ;


 int CLOCK_MONOTONIC ;
 int ENOMEM ;
 struct iio_sw_trigger* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int HRTIMER_DEFAULT_SAMPLING_FREQUENCY ;
 int HRTIMER_MODE_REL ;
 int NSEC_PER_SEC ;
 int hrtimer_init (TYPE_6__*,int ,int ) ;
 int iio_hrtimer_attr_groups ;
 int iio_hrtimer_trig_handler ;
 int iio_hrtimer_trigger_ops ;
 int iio_hrtimer_type ;
 int iio_swt_group_init_type_name (struct iio_sw_trigger*,char const*,int *) ;
 TYPE_2__* iio_trigger_alloc (char*,char const*) ;
 int iio_trigger_free (TYPE_2__*) ;
 int iio_trigger_register (TYPE_2__*) ;
 int iio_trigger_set_drvdata (TYPE_2__*,struct iio_hrtimer_info*) ;
 int kfree (struct iio_hrtimer_info*) ;
 struct iio_hrtimer_info* kzalloc (int,int ) ;

__attribute__((used)) static struct iio_sw_trigger *iio_trig_hrtimer_probe(const char *name)
{
 struct iio_hrtimer_info *trig_info;
 int ret;

 trig_info = kzalloc(sizeof(*trig_info), GFP_KERNEL);
 if (!trig_info)
  return ERR_PTR(-ENOMEM);

 trig_info->swt.trigger = iio_trigger_alloc("%s", name);
 if (!trig_info->swt.trigger) {
  ret = -ENOMEM;
  goto err_free_trig_info;
 }

 iio_trigger_set_drvdata(trig_info->swt.trigger, trig_info);
 trig_info->swt.trigger->ops = &iio_hrtimer_trigger_ops;
 trig_info->swt.trigger->dev.groups = iio_hrtimer_attr_groups;

 hrtimer_init(&trig_info->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 trig_info->timer.function = iio_hrtimer_trig_handler;

 trig_info->sampling_frequency = HRTIMER_DEFAULT_SAMPLING_FREQUENCY;
 trig_info->period = NSEC_PER_SEC / trig_info->sampling_frequency;

 ret = iio_trigger_register(trig_info->swt.trigger);
 if (ret)
  goto err_free_trigger;

 iio_swt_group_init_type_name(&trig_info->swt, name, &iio_hrtimer_type);
 return &trig_info->swt;
err_free_trigger:
 iio_trigger_free(trig_info->swt.trigger);
err_free_trig_info:
 kfree(trig_info);

 return ERR_PTR(ret);
}
