
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* msg; int len; void* rx_ts; } ;
struct cec_pin {int state; void* ts; int tx_generated_poll; int rx_eom; int rx_bit; int la_mask; int kthread_waitq; TYPE_1__ work_rx_msg; TYPE_1__ rx_msg; int rx_low_drive_cnt; void* rx_data_bit_too_short_delta; void* rx_data_bit_too_short_ts; int rx_data_bit_too_short_cnt; int rx_data_bit_too_long_cnt; void* rx_start_bit_too_short_delta; void* rx_start_bit_too_short_ts; int rx_start_bit_too_short_cnt; int rx_start_bit_too_long_cnt; int tx_extra_bytes; int tx_msg; void* rx_start_bit_low_too_short_delta; void* rx_start_bit_low_too_short_ts; int rx_start_bit_low_too_short_cnt; } ;
typedef void* s32 ;
typedef void* ktime_t ;



 int CEC_LOG_ADDR_BROADCAST ;
 int CEC_MAX_MSG_SIZE ;







 void* CEC_ST_RX_LOW_DRIVE ;


 int CEC_ST_TX_START_BIT_HIGH ;
 void* CEC_TIM_DATA_BIT_TOTAL_LONG ;
 void* CEC_TIM_DATA_BIT_TOTAL_MIN ;
 void* CEC_TIM_IDLE_SAMPLE ;
 void* CEC_TIM_START_BIT_LOW_MIN ;
 void* CEC_TIM_START_BIT_TOTAL_LONG ;
 void* CEC_TIM_START_BIT_TOTAL_MIN ;

 int cec_msg_destination (TYPE_1__*) ;
 int cec_msg_init (int *,int,int) ;
 int cec_pin_high (struct cec_pin*) ;
 int cec_pin_low (struct cec_pin*) ;
 int cec_pin_read (struct cec_pin*) ;
 int cec_pin_to_idle (struct cec_pin*) ;
 void* ktime_to_ns (void*) ;
 void* ktime_us_delta (void*,void*) ;
 int rx_arb_lost (struct cec_pin*,int*) ;
 int rx_low_drive (struct cec_pin*) ;
 int rx_nack (struct cec_pin*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cec_pin_rx_states(struct cec_pin *pin, ktime_t ts)
{
 s32 delta;
 bool v;
 bool ack;
 bool bcast, for_us;
 u8 dest;
 u8 poll;

 switch (pin->state) {

 case 129:
  v = cec_pin_read(pin);
  if (!v)
   break;
  pin->state = 130;
  delta = ktime_us_delta(ts, pin->ts);

  if (delta < CEC_TIM_START_BIT_LOW_MIN - CEC_TIM_IDLE_SAMPLE) {
   if (!pin->rx_start_bit_low_too_short_cnt++) {
    pin->rx_start_bit_low_too_short_ts = ktime_to_ns(pin->ts);
    pin->rx_start_bit_low_too_short_delta = delta;
   }
   cec_pin_to_idle(pin);
   break;
  }
  if (rx_arb_lost(pin, &poll)) {
   cec_msg_init(&pin->tx_msg, poll >> 4, poll & 0xf);
   pin->tx_generated_poll = 1;
   pin->tx_extra_bytes = 0;
   pin->state = CEC_ST_TX_START_BIT_HIGH;
   pin->ts = ts;
  }
  break;

 case 130:
  v = cec_pin_read(pin);
  delta = ktime_us_delta(ts, pin->ts);




  if (v && delta > CEC_TIM_START_BIT_TOTAL_LONG) {
   pin->rx_start_bit_too_long_cnt++;
   cec_pin_to_idle(pin);
   break;
  }
  if (v)
   break;

  if (delta < CEC_TIM_START_BIT_TOTAL_MIN - CEC_TIM_IDLE_SAMPLE) {
   if (!pin->rx_start_bit_too_short_cnt++) {
    pin->rx_start_bit_too_short_ts = ktime_to_ns(pin->ts);
    pin->rx_start_bit_too_short_delta = delta;
   }
   cec_pin_to_idle(pin);
   break;
  }
  if (rx_low_drive(pin)) {

   cec_pin_low(pin);
   pin->state = CEC_ST_RX_LOW_DRIVE;
   pin->rx_low_drive_cnt++;
   break;
  }
  pin->state = 132;
  pin->ts = ts;
  pin->rx_eom = 0;
  break;

 case 132:
  v = cec_pin_read(pin);
  pin->state = 133;
  switch (pin->rx_bit % 10) {
  default:
   if (pin->rx_bit / 10 < CEC_MAX_MSG_SIZE)
    pin->rx_msg.msg[pin->rx_bit / 10] |=
     v << (7 - (pin->rx_bit % 10));
   break;
  case 128:
   pin->rx_eom = v;
   pin->rx_msg.len = pin->rx_bit / 10 + 1;
   break;
  case 138:
   break;
  }
  pin->rx_bit++;
  break;

 case 133:
  pin->state = 131;
  break;

 case 131:
  v = cec_pin_read(pin);
  delta = ktime_us_delta(ts, pin->ts);




  if (v && delta > CEC_TIM_DATA_BIT_TOTAL_LONG) {
   pin->rx_data_bit_too_long_cnt++;
   cec_pin_to_idle(pin);
   break;
  }
  if (v)
   break;

  if (rx_low_drive(pin)) {

   cec_pin_low(pin);
   pin->state = CEC_ST_RX_LOW_DRIVE;
   pin->rx_low_drive_cnt++;
   break;
  }





  if (delta < CEC_TIM_DATA_BIT_TOTAL_MIN) {
   if (!pin->rx_data_bit_too_short_cnt++) {
    pin->rx_data_bit_too_short_ts = ktime_to_ns(pin->ts);
    pin->rx_data_bit_too_short_delta = delta;
   }
   cec_pin_low(pin);
   pin->state = CEC_ST_RX_LOW_DRIVE;
   pin->rx_low_drive_cnt++;
   break;
  }
  pin->ts = ts;
  if (pin->rx_bit % 10 != 9) {
   pin->state = 132;
   break;
  }

  dest = cec_msg_destination(&pin->rx_msg);
  bcast = dest == CEC_LOG_ADDR_BROADCAST;

  for_us = bcast || (pin->la_mask & (1 << dest));

  ack = bcast ? 1 : !for_us;

  if (for_us && rx_nack(pin)) {

   ack = !ack;
  }

  if (ack) {

   pin->state = 136;
   break;
  }
  cec_pin_low(pin);
  pin->state = 135;
  break;

 case 135:
  cec_pin_high(pin);
  pin->state = 134;
  break;

 case 134:
 case 136:
  v = cec_pin_read(pin);
  if (v && pin->rx_eom) {
   pin->work_rx_msg = pin->rx_msg;
   pin->work_rx_msg.rx_ts = ktime_to_ns(ts);
   wake_up_interruptible(&pin->kthread_waitq);
   pin->ts = ts;
   pin->state = 137;
   break;
  }
  pin->rx_bit++;
  pin->state = 131;
  break;

 case 137:
  cec_pin_to_idle(pin);
  break;

 default:
  break;
 }
}
