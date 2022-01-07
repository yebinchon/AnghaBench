
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum motionsensor_type { ____Placeholder_motionsensor_type } motionsensor_type ;
__attribute__((used)) static void get_default_min_max_freq(enum motionsensor_type type,
         u32 *min_freq,
         u32 *max_freq)
{
 switch (type) {
 case 134:
 case 131:
  *min_freq = 12500;
  *max_freq = 100000;
  break;
 case 129:
  *min_freq = 5000;
  *max_freq = 25000;
  break;
 case 128:
 case 130:
  *min_freq = 100;
  *max_freq = 50000;
  break;
 case 132:
  *min_freq = 250;
  *max_freq = 20000;
  break;
 case 133:
 default:
  *min_freq = 0;
  *max_freq = 0;
  break;
 }
}
