
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pattern_trig_data {size_t npatterns; TYPE_1__* patterns; } ;
struct TYPE_2__ {int delta_t; int brightness; } ;


 int EINVAL ;
 size_t MAX_PATTERNS ;
 int sscanf (char const*,char*,int *,int *,int*) ;

__attribute__((used)) static int pattern_trig_store_patterns_string(struct pattern_trig_data *data,
           const char *buf, size_t count)
{
 int ccount, cr, offset = 0;

 while (offset < count - 1 && data->npatterns < MAX_PATTERNS) {
  cr = 0;
  ccount = sscanf(buf + offset, "%d %u %n",
    &data->patterns[data->npatterns].brightness,
    &data->patterns[data->npatterns].delta_t, &cr);
  if (ccount != 2) {
   data->npatterns = 0;
   return -EINVAL;
  }

  offset += cr;
  data->npatterns++;
 }

 return 0;
}
