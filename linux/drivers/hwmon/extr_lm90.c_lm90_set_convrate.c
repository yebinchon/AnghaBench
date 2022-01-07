
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm90_data {int max_convrate; int update_interval; } ;
struct i2c_client {int dummy; } ;


 int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int LM90_MAX_CONVRATE_MS ;
 int lm90_write_convrate (struct lm90_data*,int) ;

__attribute__((used)) static int lm90_set_convrate(struct i2c_client *client, struct lm90_data *data,
        unsigned int interval)
{
 unsigned int update_interval;
 int i, err;


 interval <<= 6;


 for (i = 0, update_interval = LM90_MAX_CONVRATE_MS << 6;
      i < data->max_convrate; i++, update_interval >>= 1)
  if (interval >= update_interval * 3 / 4)
   break;

 err = lm90_write_convrate(data, i);
 data->update_interval = DIV_ROUND_CLOSEST(update_interval, 64);
 return err;
}
