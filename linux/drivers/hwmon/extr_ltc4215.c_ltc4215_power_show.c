
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LTC4215_ADIN ;
 int PAGE_SIZE ;
 unsigned int abs (int const) ;
 unsigned int ltc4215_get_current (struct device*) ;
 int ltc4215_get_voltage (struct device*,int ) ;
 int snprintf (char*,int ,char*,unsigned int const) ;

__attribute__((used)) static ssize_t ltc4215_power_show(struct device *dev,
      struct device_attribute *da, char *buf)
{
 const unsigned int curr = ltc4215_get_current(dev);
 const int output_voltage = ltc4215_get_voltage(dev, LTC4215_ADIN);


 const unsigned int power = abs(output_voltage * curr);

 return snprintf(buf, PAGE_SIZE, "%u\n", power);
}
