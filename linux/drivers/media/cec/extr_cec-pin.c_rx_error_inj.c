
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef unsigned int u64 ;
typedef size_t u16 ;
struct cec_pin {unsigned int* error_inj; scalar_t__** error_inj_args; scalar_t__ rx_bit; int rx_toggle; } ;



 unsigned int CEC_ERROR_INJ_MODE_MASK ;


 size_t cec_pin_rx_error_inj (struct cec_pin*) ;

__attribute__((used)) static bool rx_error_inj(struct cec_pin *pin, unsigned int mode_offset,
    int arg_idx, u8 *arg)
{
 return 0;

}
