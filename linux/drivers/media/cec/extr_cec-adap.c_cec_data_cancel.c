
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int tx_status; int tx_error_cnt; void* tx_ts; int rx_status; void* rx_ts; } ;
struct cec_data {TYPE_2__ msg; TYPE_1__* adap; scalar_t__ attempts; int list; } ;
struct TYPE_3__ {int transmit_queue_sz; struct cec_data* transmitting; } ;


 int CEC_RX_STATUS_ABORTED ;
 int CEC_TX_STATUS_MAX_RETRIES ;
 int CEC_TX_STATUS_OK ;
 int cec_data_completed (struct cec_data*) ;
 int cec_queue_msg_monitor (TYPE_1__*,TYPE_2__*,int) ;
 void* ktime_get_ns () ;
 int list_del_init (int *) ;

__attribute__((used)) static void cec_data_cancel(struct cec_data *data, u8 tx_status)
{




 if (data->adap->transmitting == data) {
  data->adap->transmitting = ((void*)0);
 } else {
  list_del_init(&data->list);
  if (!(data->msg.tx_status & CEC_TX_STATUS_OK))
   data->adap->transmit_queue_sz--;
 }

 if (data->msg.tx_status & CEC_TX_STATUS_OK) {
  data->msg.rx_ts = ktime_get_ns();
  data->msg.rx_status = CEC_RX_STATUS_ABORTED;
 } else {
  data->msg.tx_ts = ktime_get_ns();
  data->msg.tx_status |= tx_status |
           CEC_TX_STATUS_MAX_RETRIES;
  data->msg.tx_error_cnt++;
  data->attempts = 0;
 }


 cec_queue_msg_monitor(data->adap, &data->msg, 1);

 cec_data_completed(data);
}
