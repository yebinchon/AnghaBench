
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_core_data {int base; } ;


 int HDMI_CORE_IH_MUTE ;
 int REG_FLD_MOD (int ,int ,int,int,int ) ;

__attribute__((used)) static void hdmi_core_enable_interrupts(struct hdmi_core_data *core)
{

 REG_FLD_MOD(core->base, HDMI_CORE_IH_MUTE, 0x0, 1, 0);
}
