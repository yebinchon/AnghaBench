
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gp2a_data {int input; TYPE_1__* pdata; } ;
struct TYPE_2__ {int vout_gpio; } ;


 int SW_FRONT_PROXIMITY ;
 int gpio_get_value (int ) ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static int gp2a_report(struct gp2a_data *dt)
{
 int vo = gpio_get_value(dt->pdata->vout_gpio);

 input_report_switch(dt->input, SW_FRONT_PROXIMITY, !vo);
 input_sync(dt->input);

 return 0;
}
