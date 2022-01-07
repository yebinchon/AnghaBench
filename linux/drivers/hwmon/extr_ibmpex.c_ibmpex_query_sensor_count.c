
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_len; } ;
struct ibmpex_bmc_data {int rx_msg_len; int* rx_msg_data; scalar_t__ rx_result; int read_complete; TYPE_1__ tx_message; int * tx_msg_data; } ;


 int ENOENT ;
 int PEX_GET_SENSOR_COUNT ;
 int ibmpex_send_message (struct ibmpex_bmc_data*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int ibmpex_query_sensor_count(struct ibmpex_bmc_data *data)
{
 data->tx_msg_data[0] = PEX_GET_SENSOR_COUNT;
 data->tx_message.data_len = 1;
 ibmpex_send_message(data);

 wait_for_completion(&data->read_complete);

 if (data->rx_result || data->rx_msg_len != 1)
  return -ENOENT;

 return data->rx_msg_data[0];
}
