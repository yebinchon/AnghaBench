
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etmv4_config {int eventctrl0; int eventctrl1; int stall_ctrl; int syncfreq; int ts_ctrl; int vinst_ctrl; } ;


 int BIT (int ) ;

__attribute__((used)) static void etm4_set_default_config(struct etmv4_config *config)
{

 config->eventctrl0 = 0x0;
 config->eventctrl1 = 0x0;


 config->stall_ctrl = 0x0;


 config->syncfreq = 0xC;


 config->ts_ctrl = 0x0;


 config->vinst_ctrl |= BIT(0);
}
