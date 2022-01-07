
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auo_pixcir_ts {TYPE_1__* pdata; } ;
struct TYPE_2__ {int gpio_rst; } ;


 int gpio_set_value (int ,int ) ;

__attribute__((used)) static void auo_pixcir_reset(void *data)
{
 struct auo_pixcir_ts *ts = data;

 gpio_set_value(ts->pdata->gpio_rst, 0);
}
