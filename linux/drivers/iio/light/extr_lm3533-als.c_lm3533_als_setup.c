
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3533_als_platform_data {int r_select; int pwm_mode; } ;
struct lm3533_als {int dummy; } ;


 int lm3533_als_set_input_mode (struct lm3533_als*,int ) ;
 int lm3533_als_set_resistor (struct lm3533_als*,int ) ;

__attribute__((used)) static int lm3533_als_setup(struct lm3533_als *als,
       struct lm3533_als_platform_data *pdata)
{
 int ret;

 ret = lm3533_als_set_input_mode(als, pdata->pwm_mode);
 if (ret)
  return ret;


 if (!pdata->pwm_mode) {
  ret = lm3533_als_set_resistor(als, pdata->r_select);
  if (ret)
   return ret;
 }

 return 0;
}
