
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcnl4200_channel {int reg; int lock; int last_measurement; int sampling_rate; } ;
struct vcnl4000_data {int client; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;


 int i2c_smbus_read_word_data (int ,int ) ;
 int ktime_add (int ,int ) ;
 int ktime_get () ;
 scalar_t__ ktime_us_delta (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static int vcnl4200_measure(struct vcnl4000_data *data,
  struct vcnl4200_channel *chan, int *val)
{
 int ret;
 s64 delta;
 ktime_t next_measurement;

 mutex_lock(&chan->lock);

 next_measurement = ktime_add(chan->last_measurement,
   chan->sampling_rate);
 delta = ktime_us_delta(next_measurement, ktime_get());
 if (delta > 0)
  usleep_range(delta, delta + 500);
 chan->last_measurement = ktime_get();

 mutex_unlock(&chan->lock);

 ret = i2c_smbus_read_word_data(data->client, chan->reg);
 if (ret < 0)
  return ret;

 *val = ret;

 return 0;
}
