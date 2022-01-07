
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {size_t* msg; } ;
struct cec_pin {int* error_inj; int rx_bit; TYPE_1__ rx_msg; } ;


 size_t CEC_ERROR_INJ_OP_ANY ;
 int CEC_ERROR_INJ_RX_MASK ;

u16 cec_pin_rx_error_inj(struct cec_pin *pin)
{
 u16 cmd = CEC_ERROR_INJ_OP_ANY;


 if (!(pin->error_inj[cmd] & CEC_ERROR_INJ_RX_MASK) &&
     pin->rx_bit >= 18)
  cmd = pin->rx_msg.msg[1];
 return (pin->error_inj[cmd] & CEC_ERROR_INJ_RX_MASK) ? cmd :
  CEC_ERROR_INJ_OP_ANY;
}
