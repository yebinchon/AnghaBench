
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_fan_ctx {int pwm_value; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct pwm_fan_ctx* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t pwm_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct pwm_fan_ctx *ctx = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n", ctx->pwm_value);
}
