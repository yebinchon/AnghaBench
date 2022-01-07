
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_pin {int monitor_all; } ;
struct cec_adapter {struct cec_pin* pin; } ;



__attribute__((used)) static int cec_pin_adap_monitor_all_enable(struct cec_adapter *adap,
        bool enable)
{
 struct cec_pin *pin = adap->pin;

 pin->monitor_all = enable;
 return 0;
}
