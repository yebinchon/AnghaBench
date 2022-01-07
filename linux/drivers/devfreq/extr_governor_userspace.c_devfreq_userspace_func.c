
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userspace_data {unsigned long user_frequency; scalar_t__ valid; } ;
struct devfreq {unsigned long previous_freq; struct userspace_data* data; } ;



__attribute__((used)) static int devfreq_userspace_func(struct devfreq *df, unsigned long *freq)
{
 struct userspace_data *data = df->data;

 if (data->valid)
  *freq = data->user_frequency;
 else
  *freq = df->previous_freq;

 return 0;
}
