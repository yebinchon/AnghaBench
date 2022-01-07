
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ltc2978_data {int dummy; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ lin11_to_val (int) ;
 int ltc_read_word_data (struct i2c_client*,int,int) ;

__attribute__((used)) static int ltc_get_min(struct ltc2978_data *data, struct i2c_client *client,
         int page, int reg, u16 *pmin)
{
 int ret;

 ret = ltc_read_word_data(client, page, reg);
 if (ret >= 0) {
  if (lin11_to_val(ret) < lin11_to_val(*pmin))
   *pmin = ret;
  ret = *pmin;
 }
 return ret;
}
