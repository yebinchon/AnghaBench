
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int dummy; } ;
struct wf_sat_sensor {int index; int shift; int index2; struct wf_sat* sat; } ;
struct wf_sat {int* cache; int mutex; scalar_t__ last_read; int * i2c; } ;
typedef int s32 ;


 int ENODEV ;
 scalar_t__ MAX_AGE ;
 int jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (int ,scalar_t__) ;
 int wf_sat_read_cache (struct wf_sat*) ;
 struct wf_sat_sensor* wf_to_sat (struct wf_sensor*) ;

__attribute__((used)) static int wf_sat_sensor_get(struct wf_sensor *sr, s32 *value)
{
 struct wf_sat_sensor *sens = wf_to_sat(sr);
 struct wf_sat *sat = sens->sat;
 int i, err;
 s32 val;

 if (sat->i2c == ((void*)0))
  return -ENODEV;

 mutex_lock(&sat->mutex);
 if (time_after(jiffies, (sat->last_read + MAX_AGE))) {
  err = wf_sat_read_cache(sat);
  if (err)
   goto fail;
 }

 i = sens->index * 2;
 val = ((sat->cache[i] << 8) + sat->cache[i+1]) << sens->shift;
 if (sens->index2 >= 0) {
  i = sens->index2 * 2;

  val = (val * ((sat->cache[i] << 8) + sat->cache[i+1])) >> 4;
 }

 *value = val;
 err = 0;

 fail:
 mutex_unlock(&sat->mutex);
 return err;
}
