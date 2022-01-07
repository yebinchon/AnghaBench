
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct cec_msg {int len; } ;
struct cec_pin {scalar_t__ state; scalar_t__ tx_bit; scalar_t__ work_tx_status; struct cec_msg tx_msg; scalar_t__ tx_extra_bytes; scalar_t__ tx_signal_free_time; } ;
struct cec_adapter {struct cec_pin* pin; } ;


 scalar_t__ CEC_SIGNAL_FREE_TIME_NEW_INITIATOR ;
 scalar_t__ CEC_ST_IDLE ;
 int cec_pin_start_timer (struct cec_pin*) ;
 scalar_t__ tx_add_bytes (struct cec_pin*) ;
 scalar_t__ tx_remove_byte (struct cec_pin*) ;

__attribute__((used)) static int cec_pin_adap_transmit(struct cec_adapter *adap, u8 attempts,
          u32 signal_free_time, struct cec_msg *msg)
{
 struct cec_pin *pin = adap->pin;






 if (pin->state != CEC_ST_IDLE &&
     signal_free_time > CEC_SIGNAL_FREE_TIME_NEW_INITIATOR)
  signal_free_time = CEC_SIGNAL_FREE_TIME_NEW_INITIATOR;

 pin->tx_signal_free_time = signal_free_time;
 pin->tx_extra_bytes = 0;
 pin->tx_msg = *msg;
 if (msg->len > 1) {

  pin->tx_extra_bytes = tx_add_bytes(pin);
 }
 if (msg->len > 2 && tx_remove_byte(pin)) {

  pin->tx_msg.len--;
 }
 pin->work_tx_status = 0;
 pin->tx_bit = 0;
 cec_pin_start_timer(pin);
 return 0;
}
