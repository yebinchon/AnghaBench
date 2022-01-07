
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pattern_trig_data {int npatterns; int is_hw_pattern; int lock; TYPE_1__* patterns; } ;
typedef int ssize_t ;
struct TYPE_2__ {int delta_t; int brightness; } ;


 scalar_t__ PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int ,int ) ;

__attribute__((used)) static ssize_t pattern_trig_show_patterns(struct pattern_trig_data *data,
       char *buf, bool hw_pattern)
{
 ssize_t count = 0;
 int i;

 mutex_lock(&data->lock);

 if (!data->npatterns || (data->is_hw_pattern ^ hw_pattern))
  goto out;

 for (i = 0; i < data->npatterns; i++) {
  count += scnprintf(buf + count, PAGE_SIZE - count,
       "%d %u ",
       data->patterns[i].brightness,
       data->patterns[i].delta_t);
 }

 buf[count - 1] = '\n';

out:
 mutex_unlock(&data->lock);
 return count;
}
