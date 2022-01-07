
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int to_send ;
struct ssp_instruction {int c; void* b; void* a; } ;
struct ssp_data {int * delay_buf; TYPE_1__* spi; int * batch_opt_buf; int * batch_latency_buf; } ;
typedef enum ssp_sensor_type { ____Placeholder_ssp_sensor_type } ssp_sensor_type ;
struct TYPE_2__ {int dev; } ;


 int SSP_MSG2SSP_INST_CHANGE_DELAY ;
 void* cpu_to_le32 (int ) ;
 int dev_err (int *,char*) ;
 int ssp_send_instruction (struct ssp_data*,int ,int,int *,int) ;

int ssp_change_delay(struct ssp_data *data, enum ssp_sensor_type type,
       u32 delay)
{
 int ret;
 struct ssp_instruction to_send;

 to_send.a = cpu_to_le32(delay);
 to_send.b = cpu_to_le32(data->batch_latency_buf[type]);
 to_send.c = data->batch_opt_buf[type];

 ret = ssp_send_instruction(data, SSP_MSG2SSP_INST_CHANGE_DELAY, type,
       (u8 *)&to_send, sizeof(to_send));
 if (ret < 0) {
  dev_err(&data->spi->dev, "Changing sensor delay failed\n");
  return ret;
 }

 data->delay_buf[type] = delay;

 return 0;
}
