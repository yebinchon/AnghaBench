
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg; scalar_t__ len; } ;
struct cec_pin {int tx_generated_poll; int tx_post_eom; scalar_t__ state; int tx_toggle; int rx_toggle; int ts; TYPE_1__ rx_msg; scalar_t__ tx_bit; scalar_t__ rx_bit; } ;


 scalar_t__ CEC_ST_IDLE ;
 scalar_t__ CEC_ST_RX_LOW_DRIVE ;
 scalar_t__ CEC_ST_RX_START_BIT_LOW ;
 scalar_t__ CEC_ST_TX_LOW_DRIVE ;
 scalar_t__ CEC_ST_TX_WAIT ;
 int memset (int ,int ,int) ;
 int ns_to_ktime (int ) ;

__attribute__((used)) static void cec_pin_to_idle(struct cec_pin *pin)
{




 pin->rx_bit = pin->tx_bit = 0;
 pin->rx_msg.len = 0;
 memset(pin->rx_msg.msg, 0, sizeof(pin->rx_msg.msg));
 pin->ts = ns_to_ktime(0);
 pin->tx_generated_poll = 0;
 pin->tx_post_eom = 0;
 if (pin->state >= CEC_ST_TX_WAIT &&
     pin->state <= CEC_ST_TX_LOW_DRIVE)
  pin->tx_toggle ^= 1;
 if (pin->state >= CEC_ST_RX_START_BIT_LOW &&
     pin->state <= CEC_ST_RX_LOW_DRIVE)
  pin->rx_toggle ^= 1;
 pin->state = CEC_ST_IDLE;
}
