
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssp_data {int * delay_buf; } ;
typedef enum ssp_sensor_type { ____Placeholder_ssp_sensor_type } ssp_sensor_type ;



u32 ssp_get_sensor_delay(struct ssp_data *data, enum ssp_sensor_type type)
{
 return data->delay_buf[type];
}
