
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wf_ad7417_priv {TYPE_1__* mpu; } ;
typedef int s32 ;
struct TYPE_2__ {int bdiode; int mdiode; } ;


 int ADC_12V_CURRENT_SCALE ;
 int ADC_CPU_CURRENT_SCALE ;
 int ADC_CPU_VOLTAGE_SCALE ;

__attribute__((used)) static void wf_ad7417_adc_convert(struct wf_ad7417_priv *pv,
      int chan, s32 raw, s32 *value)
{
 switch(chan) {
 case 1:
  *value = (raw * (s32)pv->mpu->mdiode +
   ((s32)pv->mpu->bdiode << 12)) >> 2;
  break;
 case 2:
  *value = raw * ADC_12V_CURRENT_SCALE;
  break;
 case 3:
  *value = raw * ADC_CPU_VOLTAGE_SCALE;
  break;
 case 4:
  *value = raw * ADC_CPU_CURRENT_SCALE;
  break;
 }
}
