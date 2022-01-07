
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * is_visible; int show_label; int show_name; int irq_handler; int read_sensor; } ;
struct abx500_temp {TYPE_3__ ops; int monitored_sensors; int * gpadc_addr; struct ab8500_temp* plat_data; TYPE_1__* pdev; } ;
struct TYPE_5__ {int tbl_sz; int temp_tbl; int r_up; int vcc; } ;
struct ab8500_temp {TYPE_2__ cfg; int power_off_work; int btemp; int gpadc; } ;
struct TYPE_4__ {int dev; } ;


 int ADC_AUX1 ;
 int ADC_AUX2 ;
 int BAT_CTRL ;
 int BTEMP_BALL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int NUM_MONITORED_SENSORS ;
 int PTR_ERR (int ) ;
 int PULL_UP_RESISTOR ;
 int THERMAL_VCC ;
 int ab8500_btemp_get () ;
 int ab8500_gpadc_get (char*) ;
 int ab8500_read_sensor ;
 int ab8500_show_label ;
 int ab8500_show_name ;
 int ab8500_temp_irq_handler ;
 int ab8500_temp_tbl_a_size ;
 int ab8500_temp_tbl_a_thermistor ;
 int ab8500_thermal_power_off ;
 struct ab8500_temp* devm_kzalloc (int *,int,int ) ;

int abx500_hwmon_init(struct abx500_temp *data)
{
 struct ab8500_temp *ab8500_data;

 ab8500_data = devm_kzalloc(&data->pdev->dev, sizeof(*ab8500_data),
  GFP_KERNEL);
 if (!ab8500_data)
  return -ENOMEM;

 ab8500_data->gpadc = ab8500_gpadc_get("ab8500-gpadc.0");
 if (IS_ERR(ab8500_data->gpadc))
  return PTR_ERR(ab8500_data->gpadc);

 ab8500_data->btemp = ab8500_btemp_get();
 if (IS_ERR(ab8500_data->btemp))
  return PTR_ERR(ab8500_data->btemp);

 INIT_DELAYED_WORK(&ab8500_data->power_off_work,
     ab8500_thermal_power_off);

 ab8500_data->cfg.vcc = THERMAL_VCC;
 ab8500_data->cfg.r_up = PULL_UP_RESISTOR;
 ab8500_data->cfg.temp_tbl = ab8500_temp_tbl_a_thermistor;
 ab8500_data->cfg.tbl_sz = ab8500_temp_tbl_a_size;

 data->plat_data = ab8500_data;





 data->gpadc_addr[0] = ADC_AUX1;
 data->gpadc_addr[1] = ADC_AUX2;
 data->gpadc_addr[2] = BTEMP_BALL;
 data->gpadc_addr[3] = BAT_CTRL;
 data->monitored_sensors = NUM_MONITORED_SENSORS;

 data->ops.read_sensor = ab8500_read_sensor;
 data->ops.irq_handler = ab8500_temp_irq_handler;
 data->ops.show_name = ab8500_show_name;
 data->ops.show_label = ab8500_show_label;
 data->ops.is_visible = ((void*)0);

 return 0;
}
