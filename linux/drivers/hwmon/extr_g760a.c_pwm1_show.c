
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g760a_data {int set_cnt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PWM_FROM_CNT (int ) ;
 struct g760a_data* g760a_update_client (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t pwm1_show(struct device *dev, struct device_attribute *da,
    char *buf)
{
 struct g760a_data *data = g760a_update_client(dev);

 return sprintf(buf, "%d\n", PWM_FROM_CNT(data->set_cnt));
}
