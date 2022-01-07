
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct at91_adc_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct at91_adc_state {int touchscreen_type; struct at91_adc_caps* caps; int * registers; int trigger_list; int trigger_number; int startup_time; int num_channels; int channels_mask; int vref_mv; int use_external; } ;
struct at91_adc_data {int touchscreen_type; int trigger_list; int trigger_number; int startup_time; int channels_used; int vref; int use_external_triggers; } ;
struct at91_adc_caps {int registers; int num_channels; } ;
struct TYPE_4__ {scalar_t__ driver_data; } ;


 int EINVAL ;
 TYPE_2__* platform_get_device_id (struct platform_device*) ;

__attribute__((used)) static int at91_adc_probe_pdata(struct at91_adc_state *st,
    struct platform_device *pdev)
{
 struct at91_adc_data *pdata = pdev->dev.platform_data;

 if (!pdata)
  return -EINVAL;

 st->caps = (struct at91_adc_caps *)
   platform_get_device_id(pdev)->driver_data;

 st->use_external = pdata->use_external_triggers;
 st->vref_mv = pdata->vref;
 st->channels_mask = pdata->channels_used;
 st->num_channels = st->caps->num_channels;
 st->startup_time = pdata->startup_time;
 st->trigger_number = pdata->trigger_number;
 st->trigger_list = pdata->trigger_list;
 st->registers = &st->caps->registers;
 st->touchscreen_type = pdata->touchscreen_type;

 return 0;
}
