
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct6775_data {int have_temp; int* temp_src; } ;
typedef int ssize_t ;


 int BIT (int) ;
 int NUM_TEMP ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
show_pwm_temp_sel_common(struct nct6775_data *data, char *buf, int src)
{
 int i, sel = 0;

 for (i = 0; i < NUM_TEMP; i++) {
  if (!(data->have_temp & BIT(i)))
   continue;
  if (src == data->temp_src[i]) {
   sel = i + 1;
   break;
  }
 }

 return sprintf(buf, "%d\n", sel);
}
