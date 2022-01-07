
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dps310_data {int lock; int regmap; } ;


 int DPS310_MEAS_CFG ;
 int DPS310_POLL_SLEEP_US (int) ;
 int DPS310_POLL_TIMEOUT_US (int) ;
 int DPS310_TMP_RDY ;
 int EINTR ;
 int dps310_get_temp_samp_freq (struct dps310_data*) ;
 int dps310_read_temp_ready (struct dps310_data*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read_poll_timeout (int ,int ,int,int,int ,int) ;

__attribute__((used)) static int dps310_read_temp_raw(struct dps310_data *data)
{
 int rc;
 int rate;
 int ready;
 int timeout;

 if (mutex_lock_interruptible(&data->lock))
  return -EINTR;

 rate = dps310_get_temp_samp_freq(data);
 timeout = DPS310_POLL_TIMEOUT_US(rate);


 rc = regmap_read_poll_timeout(data->regmap, DPS310_MEAS_CFG, ready,
          ready & DPS310_TMP_RDY,
          DPS310_POLL_SLEEP_US(timeout), timeout);
 if (rc < 0)
  goto done;

 rc = dps310_read_temp_ready(data);

done:
 mutex_unlock(&data->lock);
 return rc;
}
