
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {int len; size_t* msg; } ;
struct cec_pin {int* error_inj; TYPE_1__ tx_msg; } ;


 size_t CEC_ERROR_INJ_OP_ANY ;
 int CEC_ERROR_INJ_TX_MASK ;

u16 cec_pin_tx_error_inj(struct cec_pin *pin)
{
 u16 cmd = CEC_ERROR_INJ_OP_ANY;

 if (!(pin->error_inj[cmd] & CEC_ERROR_INJ_TX_MASK) &&
     pin->tx_msg.len > 1)
  cmd = pin->tx_msg.msg[1];
 return (pin->error_inj[cmd] & CEC_ERROR_INJ_TX_MASK) ? cmd :
  CEC_ERROR_INJ_OP_ANY;
}
