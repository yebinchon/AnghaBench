
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hdmi_core_data {int adap; } ;


 int cec_s_phys_addr (int ,int ,int) ;

void hdmi4_cec_set_phys_addr(struct hdmi_core_data *core, u16 pa)
{
 cec_s_phys_addr(core->adap, pa, 0);
}
