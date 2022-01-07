
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {unsigned int len; int* msg; } ;
struct TYPE_3__ {int* msg; int len; } ;
struct cec_pin {int state; int tx_nacked; int tx_bit; int tx_extra_bytes; int tx_post_eom; int rx_bit; TYPE_2__ tx_msg; int tx_ignore_nack_until_eom; int ts; TYPE_1__ rx_msg; int kthread_waitq; void* work_tx_status; void* work_tx_ts; int tx_generated_poll; int tx_low_drive_cnt; } ;
typedef void* ktime_t ;



 int CEC_ST_RX_DATA_POST_SAMPLE ;
 int CEC_ST_TX_LOW_DRIVE ;
 int CEC_TIM_DATA_BIT_SAMPLE ;
 void* CEC_TX_STATUS_ARB_LOST ;
 void* CEC_TX_STATUS_LOW_DRIVE ;
 void* CEC_TX_STATUS_NACK ;
 void* CEC_TX_STATUS_OK ;

 int cec_msg_is_broadcast (TYPE_2__*) ;
 int cec_pin_high (struct cec_pin*) ;
 int cec_pin_low (struct cec_pin*) ;
 int cec_pin_read (struct cec_pin*) ;
 int cec_pin_to_idle (struct cec_pin*) ;
 int ktime_sub_us (void*,int ) ;
 int memset (int*,int ,int) ;
 int tx_custom_bit (struct cec_pin*) ;
 int tx_early_eom (struct cec_pin*) ;
 int tx_last_bit (struct cec_pin*) ;
 int tx_long_bit (struct cec_pin*) ;
 int tx_long_start (struct cec_pin*) ;
 int tx_low_drive (struct cec_pin*) ;
 int tx_no_eom (struct cec_pin*) ;
 int tx_short_bit (struct cec_pin*) ;
 int tx_short_start (struct cec_pin*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cec_pin_tx_states(struct cec_pin *pin, ktime_t ts)
{
 bool v;
 bool is_ack_bit, ack;

 switch (pin->state) {
 case 129:
  if (cec_pin_read(pin))
   cec_pin_to_idle(pin);
  break;

 case 131:
  if (tx_short_start(pin)) {




   pin->state = 132;
  } else if (tx_long_start(pin)) {




   pin->state = 133;
  } else {
   pin->state = 135;
  }

  cec_pin_high(pin);
  break;

 case 130:
  pin->state = 134;

  cec_pin_high(pin);
  break;

 case 145:
 case 143:
 case 144:
  if (pin->tx_nacked) {
   cec_pin_to_idle(pin);
   pin->tx_msg.len = 0;
   if (pin->tx_generated_poll)
    break;
   pin->work_tx_ts = ts;
   pin->work_tx_status = CEC_TX_STATUS_NACK;
   wake_up_interruptible(&pin->kthread_waitq);
   break;
  }

 case 151:
 case 149:
 case 150:
 case 147:
 case 141:
 case 146:
  if (!cec_pin_read(pin) && !pin->tx_generated_poll) {




   pin->tx_msg.len = 0;
   pin->state = 129;
   pin->work_tx_ts = ts;
   pin->work_tx_status = CEC_TX_STATUS_LOW_DRIVE;
   pin->tx_low_drive_cnt++;
   wake_up_interruptible(&pin->kthread_waitq);
   break;
  }

 case 139:
  if (tx_last_bit(pin)) {

   cec_pin_to_idle(pin);
   pin->tx_msg.len = 0;
   if (pin->tx_generated_poll)
    break;
   pin->work_tx_ts = ts;
   pin->work_tx_status = CEC_TX_STATUS_OK;
   wake_up_interruptible(&pin->kthread_waitq);
   break;
  }
  pin->tx_bit++;

 case 135:
 case 132:
 case 133:
 case 134:
  if (tx_low_drive(pin)) {

   cec_pin_low(pin);
   pin->state = CEC_ST_TX_LOW_DRIVE;
   pin->tx_msg.len = 0;
   if (pin->tx_generated_poll)
    break;
   pin->work_tx_ts = ts;
   pin->work_tx_status = CEC_TX_STATUS_LOW_DRIVE;
   pin->tx_low_drive_cnt++;
   wake_up_interruptible(&pin->kthread_waitq);
   break;
  }
  if (pin->tx_bit / 10 >= pin->tx_msg.len + pin->tx_extra_bytes) {
   cec_pin_to_idle(pin);
   pin->tx_msg.len = 0;
   if (pin->tx_generated_poll)
    break;
   pin->work_tx_ts = ts;
   pin->work_tx_status = CEC_TX_STATUS_OK;
   wake_up_interruptible(&pin->kthread_waitq);
   break;
  }

  switch (pin->tx_bit % 10) {
  default: {






   unsigned int idx = (pin->tx_bit / 10);
   u8 val = idx;

   if (idx < pin->tx_msg.len)
    val = pin->tx_msg.msg[idx];
   v = val & (1 << (7 - (pin->tx_bit % 10)));

   pin->state = v ? 140 :
      148;
   break;
  }
  case 128: {
   unsigned int tot_len = pin->tx_msg.len +
            pin->tx_extra_bytes;
   unsigned int tx_byte_idx = pin->tx_bit / 10;

   v = !pin->tx_post_eom && tx_byte_idx == tot_len - 1;
   if (tot_len > 1 && tx_byte_idx == tot_len - 2 &&
       tx_early_eom(pin)) {

    v = 1;
    pin->tx_post_eom = 1;
   } else if (v && tx_no_eom(pin)) {

    v = 0;
   }
   pin->state = v ? 140 :
      148;
   break;
  }
  case 152:
   pin->state = 140;
   break;
  }
  if (tx_custom_bit(pin))
   pin->state = 138;
  cec_pin_low(pin);
  break;

 case 148:
 case 140:
  v = pin->state == 140;
  is_ack_bit = pin->tx_bit % 10 == 152;
  if (v && (pin->tx_bit < 4 || is_ack_bit)) {
   pin->state = 142;
  } else if (!is_ack_bit && tx_short_bit(pin)) {

   pin->state = v ? 141 :
      149;
  } else if (!is_ack_bit && tx_long_bit(pin)) {

   pin->state = v ? 146 :
      150;
  } else {
   pin->state = v ? 147 :
      151;
  }
  cec_pin_high(pin);
  break;

 case 138:
  pin->state = 139;
  cec_pin_high(pin);
  break;

 case 142:

  v = cec_pin_read(pin);
  is_ack_bit = pin->tx_bit % 10 == 152;
  if (!v && !is_ack_bit && !pin->tx_generated_poll) {
   pin->tx_msg.len = 0;
   pin->work_tx_ts = ts;
   pin->work_tx_status = CEC_TX_STATUS_ARB_LOST;
   wake_up_interruptible(&pin->kthread_waitq);
   pin->rx_bit = pin->tx_bit;
   pin->tx_bit = 0;
   memset(pin->rx_msg.msg, 0, sizeof(pin->rx_msg.msg));
   pin->rx_msg.msg[0] = pin->tx_msg.msg[0];
   pin->rx_msg.msg[0] &= (0xff << (8 - pin->rx_bit));
   pin->rx_msg.len = 0;
   pin->ts = ktime_sub_us(ts, CEC_TIM_DATA_BIT_SAMPLE);
   pin->state = CEC_ST_RX_DATA_POST_SAMPLE;
   pin->rx_bit++;
   break;
  }
  pin->state = 145;
  if (!is_ack_bit && tx_short_bit(pin)) {

   pin->state = 143;
  } else if (!is_ack_bit && tx_long_bit(pin)) {

   pin->state = 144;
  }
  if (!is_ack_bit)
   break;

  ack = cec_msg_is_broadcast(&pin->tx_msg) ? v : !v;
  if (!ack && (!pin->tx_ignore_nack_until_eom ||
      pin->tx_bit / 10 == pin->tx_msg.len - 1) &&
      !pin->tx_post_eom) {
   pin->tx_nacked = 1;
  }
  break;

 case 136:
  cec_pin_high(pin);
  pin->state = 137;
  break;

 case 137:
  cec_pin_to_idle(pin);
  break;

 default:
  break;
 }
}
