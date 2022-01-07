
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cec_pin {int dummy; } ;


 int CEC_ERROR_INJ_TX_ADD_BYTES_ARG_IDX ;
 int CEC_ERROR_INJ_TX_ADD_BYTES_OFFSET ;
 scalar_t__ tx_error_inj (struct cec_pin*,int ,int ,int *) ;

__attribute__((used)) static u8 tx_add_bytes(struct cec_pin *pin)
{
 u8 bytes;

 if (tx_error_inj(pin, CEC_ERROR_INJ_TX_ADD_BYTES_OFFSET,
    CEC_ERROR_INJ_TX_ADD_BYTES_ARG_IDX, &bytes))
  return bytes;
 return 0;
}
