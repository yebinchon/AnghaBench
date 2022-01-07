
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_core_data {int adap; } ;


 int cec_unregister_adapter (int ) ;

void hdmi4_cec_uninit(struct hdmi_core_data *core)
{
 cec_unregister_adapter(core->adap);
}
