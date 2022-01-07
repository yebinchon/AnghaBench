
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ams_iaqcore_data {scalar_t__ last_update; } ;


 scalar_t__ HZ ;
 int ams_iaqcore_read_measurement (struct ams_iaqcore_data*) ;
 scalar_t__ jiffies ;
 int time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ams_iaqcore_get_measurement(struct ams_iaqcore_data *data)
{
 int ret;


 if (!time_after(jiffies, data->last_update + HZ))
  return 0;

 ret = ams_iaqcore_read_measurement(data);
 if (ret < 0)
  return ret;

 data->last_update = jiffies;

 return 0;
}
