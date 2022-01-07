
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensors_info {int num_sensors; } ;
struct scmi_handle {struct sensors_info* sensor_priv; } ;



__attribute__((used)) static int scmi_sensor_count_get(const struct scmi_handle *handle)
{
 struct sensors_info *si = handle->sensor_priv;

 return si->num_sensors;
}
