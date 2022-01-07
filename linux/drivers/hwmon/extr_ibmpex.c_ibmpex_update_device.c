
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmpex_bmc_data {int valid; int num_sensors; int lock; scalar_t__ last_updated; int rx_msg_data; TYPE_1__* sensors; } ;
struct TYPE_2__ {void** values; int in_use; } ;


 scalar_t__ REFRESH_INTERVAL ;
 void* extract_value (int ,int) ;
 int ibmpex_query_sensor_data (struct ibmpex_bmc_data*,int) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static void ibmpex_update_device(struct ibmpex_bmc_data *data)
{
 int i, err;

 mutex_lock(&data->lock);
 if (time_before(jiffies, data->last_updated + REFRESH_INTERVAL) &&
     data->valid)
  goto out;

 for (i = 0; i < data->num_sensors; i++) {
  if (!data->sensors[i].in_use)
   continue;
  err = ibmpex_query_sensor_data(data, i);
  if (err)
   continue;
  data->sensors[i].values[0] =
   extract_value(data->rx_msg_data, 16);
  data->sensors[i].values[1] =
   extract_value(data->rx_msg_data, 18);
  data->sensors[i].values[2] =
   extract_value(data->rx_msg_data, 20);
 }

 data->last_updated = jiffies;
 data->valid = 1;

out:
 mutex_unlock(&data->lock);
}
