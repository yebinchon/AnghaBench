
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ len; } ;
struct cec_pin {TYPE_1__ tx_msg; } ;


 int CEC_ERROR_INJ_RX_ARB_LOST_ARG_IDX ;
 int CEC_ERROR_INJ_RX_ARB_LOST_OFFSET ;
 scalar_t__ rx_error_inj (struct cec_pin*,int ,int ,int *) ;

__attribute__((used)) static bool rx_arb_lost(struct cec_pin *pin, u8 *poll)
{
 return pin->tx_msg.len == 0 &&
  rx_error_inj(pin, CEC_ERROR_INJ_RX_ARB_LOST_OFFSET,
        CEC_ERROR_INJ_RX_ARB_LOST_ARG_IDX, poll);
}
