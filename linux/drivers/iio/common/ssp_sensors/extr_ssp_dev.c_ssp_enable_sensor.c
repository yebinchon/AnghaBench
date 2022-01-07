
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int to_send ;
struct ssp_instruction {int c; void* b; void* a; } ;
struct ssp_data {int* check_status; int enable_refcount; int * delay_buf; TYPE_1__* spi; int sensor_enable; int * batch_opt_buf; int * batch_latency_buf; } ;
typedef enum ssp_sensor_type { ____Placeholder_ssp_sensor_type } ssp_sensor_type ;
struct TYPE_2__ {int dev; } ;


 int BIT (int) ;


 int SSP_MSG2SSP_INST_BYPASS_SENSOR_ADD ;
 int SSP_MSG2SSP_INST_CHANGE_DELAY ;
 int SSP_NO_SENSOR_STATE ;

 int atomic_inc_return (int *) ;
 void* cpu_to_le32 (int ) ;
 int dev_err (int *,char*) ;
 int ssp_enable_wdt_timer (struct ssp_data*) ;
 int ssp_send_instruction (struct ssp_data*,int ,int,int *,int) ;

int ssp_enable_sensor(struct ssp_data *data, enum ssp_sensor_type type,
        u32 delay)
{
 int ret;
 struct ssp_instruction to_send;

 to_send.a = cpu_to_le32(delay);
 to_send.b = cpu_to_le32(data->batch_latency_buf[type]);
 to_send.c = data->batch_opt_buf[type];

 switch (data->check_status[type]) {
 case 129:

 case 130:
  ret = ssp_send_instruction(data,
        SSP_MSG2SSP_INST_BYPASS_SENSOR_ADD,
        type,
        (u8 *)&to_send, sizeof(to_send));
  if (ret < 0) {
   dev_err(&data->spi->dev, "Enabling sensor failed\n");
   data->check_status[type] = SSP_NO_SENSOR_STATE;
   goto derror;
  }

  data->sensor_enable |= BIT(type);
  data->check_status[type] = 128;
  break;
 case 128:
  ret = ssp_send_instruction(data,
        SSP_MSG2SSP_INST_CHANGE_DELAY, type,
        (u8 *)&to_send, sizeof(to_send));
  if (ret < 0) {
   dev_err(&data->spi->dev,
    "Changing sensor delay failed\n");
   goto derror;
  }
  break;
 default:
  data->check_status[type] = 130;
  break;
 }

 data->delay_buf[type] = delay;

 if (atomic_inc_return(&data->enable_refcount) == 1)
  ssp_enable_wdt_timer(data);

 return 0;

derror:
 return ret;
}
