
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_pin {int dummy; } ;


 int CEC_ERROR_INJ_RX_REMOVE_BYTE_OFFSET ;
 int rx_error_inj (struct cec_pin*,int ,int,int *) ;

__attribute__((used)) static bool rx_remove_byte(struct cec_pin *pin)
{
 return rx_error_inj(pin, CEC_ERROR_INJ_RX_REMOVE_BYTE_OFFSET, -1, ((void*)0));
}
