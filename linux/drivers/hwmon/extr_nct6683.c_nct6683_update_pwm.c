
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct6683_data {int have_pwm; int * pwm; } ;
struct device {int dummy; } ;


 int NCT6683_NUM_REG_PWM ;
 int NCT6683_REG_PWM (int) ;
 struct nct6683_data* dev_get_drvdata (struct device*) ;
 int nct6683_read (struct nct6683_data*,int ) ;

__attribute__((used)) static void nct6683_update_pwm(struct device *dev)
{
 struct nct6683_data *data = dev_get_drvdata(dev);
 int i;

 for (i = 0; i < NCT6683_NUM_REG_PWM; i++) {
  if (!(data->have_pwm & (1 << i)))
   continue;
  data->pwm[i] = nct6683_read(data, NCT6683_REG_PWM(i));
 }
}
