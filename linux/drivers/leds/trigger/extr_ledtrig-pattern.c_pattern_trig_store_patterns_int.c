
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pattern_trig_data {size_t npatterns; TYPE_1__* patterns; } ;
struct TYPE_2__ {int delta_t; int brightness; } ;



__attribute__((used)) static int pattern_trig_store_patterns_int(struct pattern_trig_data *data,
        const u32 *buf, size_t count)
{
 unsigned int i;

 for (i = 0; i < count; i += 2) {
  data->patterns[data->npatterns].brightness = buf[i];
  data->patterns[data->npatterns].delta_t = buf[i + 1];
  data->npatterns++;
 }

 return 0;
}
