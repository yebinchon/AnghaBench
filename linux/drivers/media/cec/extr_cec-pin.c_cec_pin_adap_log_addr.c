
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cec_pin {int la_mask; } ;
struct cec_adapter {struct cec_pin* pin; } ;


 int CEC_LOG_ADDR_INVALID ;

__attribute__((used)) static int cec_pin_adap_log_addr(struct cec_adapter *adap, u8 log_addr)
{
 struct cec_pin *pin = adap->pin;

 if (log_addr == CEC_LOG_ADDR_INVALID)
  pin->la_mask = 0;
 else
  pin->la_mask |= (1 << log_addr);
 return 0;
}
