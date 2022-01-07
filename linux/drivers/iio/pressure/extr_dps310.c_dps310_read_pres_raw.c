
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
struct dps310_data {int lock; int pressure_raw; int regmap; } ;
typedef int s32 ;


 int DPS310_MEAS_CFG ;
 int DPS310_POLL_SLEEP_US (int) ;
 int DPS310_POLL_TIMEOUT_US (int) ;
 int DPS310_PRS_BASE ;
 int DPS310_PRS_RDY ;
 int EINTR ;
 int dps310_get_pres_samp_freq (struct dps310_data*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int*,int) ;
 int regmap_read_poll_timeout (int ,int ,int,int,int ,int) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int dps310_read_pres_raw(struct dps310_data *data)
{
 int rc;
 int rate;
 int ready;
 int timeout;
 s32 raw;
 u8 val[3];

 if (mutex_lock_interruptible(&data->lock))
  return -EINTR;

 rate = dps310_get_pres_samp_freq(data);
 timeout = DPS310_POLL_TIMEOUT_US(rate);


 rc = regmap_read_poll_timeout(data->regmap, DPS310_MEAS_CFG, ready,
          ready & DPS310_PRS_RDY,
          DPS310_POLL_SLEEP_US(timeout), timeout);
 if (rc)
  goto done;

 rc = regmap_bulk_read(data->regmap, DPS310_PRS_BASE, val, sizeof(val));
 if (rc < 0)
  goto done;

 raw = (val[0] << 16) | (val[1] << 8) | val[2];
 data->pressure_raw = sign_extend32(raw, 23);

done:
 mutex_unlock(&data->lock);
 return rc;
}
