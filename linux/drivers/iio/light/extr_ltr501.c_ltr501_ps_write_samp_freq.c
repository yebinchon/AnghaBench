
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltr501_data {int lock_ps; int reg_ps_rate; } ;


 int ARRAY_SIZE (int ) ;
 int ltr501_match_samp_freq (int ,int ,int,int) ;
 int ltr501_ps_samp_table ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_field_write (int ,int) ;

__attribute__((used)) static int ltr501_ps_write_samp_freq(struct ltr501_data *data,
         int val, int val2)
{
 int i, ret;

 i = ltr501_match_samp_freq(ltr501_ps_samp_table,
       ARRAY_SIZE(ltr501_ps_samp_table),
       val, val2);

 if (i < 0)
  return i;

 mutex_lock(&data->lock_ps);
 ret = regmap_field_write(data->reg_ps_rate, i);
 mutex_unlock(&data->lock_ps);

 return ret;
}
