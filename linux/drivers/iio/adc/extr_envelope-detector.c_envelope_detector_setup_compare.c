
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct envelope {int level; int high; int low; int dac_max; int done; int comp_interval; int comp_timeout; int dac; scalar_t__ invert; } ;


 int complete (int *) ;
 int envelope_detector_comp_latch (struct envelope*) ;
 int iio_write_channel_raw (int ,int) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void envelope_detector_setup_compare(struct envelope *env)
{
 int ret;
 env->level = (env->high + env->low + !env->invert) / 2;

 if (env->high == env->low + 1) {
  complete(&env->done);
  return;
 }


 ret = iio_write_channel_raw(env->dac, env->invert ? 0 : env->dac_max);
 if (ret < 0)
  goto err;


 envelope_detector_comp_latch(env);


 ret = iio_write_channel_raw(env->dac, env->level);
 if (ret < 0)
  goto err;


 schedule_delayed_work(&env->comp_timeout,
         msecs_to_jiffies(env->comp_interval));
 return;

err:
 env->level = ret;
 complete(&env->done);
}
