
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pattern_trig_data {int is_hw_pattern; int lock; scalar_t__ npatterns; int timer; } ;
struct led_classdev {int (* pattern_clear ) (struct led_classdev*) ;struct pattern_trig_data* trigger_data; } ;
typedef int ssize_t ;


 int del_timer_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pattern_trig_start_pattern (struct led_classdev*) ;
 int pattern_trig_store_patterns_int (struct pattern_trig_data*,int const*,size_t) ;
 int pattern_trig_store_patterns_string (struct pattern_trig_data*,char const*,size_t) ;
 int stub1 (struct led_classdev*) ;

__attribute__((used)) static ssize_t pattern_trig_store_patterns(struct led_classdev *led_cdev,
        const char *buf, const u32 *buf_int,
        size_t count, bool hw_pattern)
{
 struct pattern_trig_data *data = led_cdev->trigger_data;
 int err = 0;

 mutex_lock(&data->lock);

 del_timer_sync(&data->timer);

 if (data->is_hw_pattern)
  led_cdev->pattern_clear(led_cdev);

 data->is_hw_pattern = hw_pattern;
 data->npatterns = 0;

 if (buf)
  err = pattern_trig_store_patterns_string(data, buf, count);
 else
  err = pattern_trig_store_patterns_int(data, buf_int, count);
 if (err)
  goto out;

 err = pattern_trig_start_pattern(led_cdev);
 if (err)
  data->npatterns = 0;

out:
 mutex_unlock(&data->lock);
 return err < 0 ? err : count;
}
