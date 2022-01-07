
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct srf04_data {int lock; int ts_rising; int ts_falling; int falling; int rising; int gpiod_trig; TYPE_1__* cfg; } ;
typedef int ktime_t ;
struct TYPE_2__ {int trigger_pulse_us; } ;


 int EIO ;
 int ETIMEDOUT ;
 int HZ ;
 int gpiod_set_value (int ,int) ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int udelay (int ) ;
 int wait_for_completion_killable_timeout (int *,int) ;

__attribute__((used)) static int srf04_read(struct srf04_data *data)
{
 int ret;
 ktime_t ktime_dt;
 u64 dt_ns;
 u32 time_ns, distance_mm;





 mutex_lock(&data->lock);

 reinit_completion(&data->rising);
 reinit_completion(&data->falling);

 gpiod_set_value(data->gpiod_trig, 1);
 udelay(data->cfg->trigger_pulse_us);
 gpiod_set_value(data->gpiod_trig, 0);


 ret = wait_for_completion_killable_timeout(&data->rising, HZ/50);
 if (ret < 0) {
  mutex_unlock(&data->lock);
  return ret;
 } else if (ret == 0) {
  mutex_unlock(&data->lock);
  return -ETIMEDOUT;
 }


 ret = wait_for_completion_killable_timeout(&data->falling, HZ/20);
 if (ret < 0) {
  mutex_unlock(&data->lock);
  return ret;
 } else if (ret == 0) {
  mutex_unlock(&data->lock);
  return -ETIMEDOUT;
 }

 ktime_dt = ktime_sub(data->ts_falling, data->ts_rising);

 mutex_unlock(&data->lock);

 dt_ns = ktime_to_ns(ktime_dt);
 if (dt_ns > 40438871)
  return -EIO;

 time_ns = dt_ns;
 distance_mm = time_ns * 106 / 617176;

 return distance_mm;
}
