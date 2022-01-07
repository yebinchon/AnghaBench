
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max16065_data {scalar_t__ curr_sense; int curr_gain; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int ADC_TO_CURR (scalar_t__,int ) ;
 int PAGE_SIZE ;
 struct max16065_data* max16065_update_device (struct device*) ;
 scalar_t__ snprintf (char*,int ,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t max16065_current_show(struct device *dev,
         struct device_attribute *da, char *buf)
{
 struct max16065_data *data = max16065_update_device(dev);

 if (unlikely(data->curr_sense < 0))
  return data->curr_sense;

 return snprintf(buf, PAGE_SIZE, "%d\n",
   ADC_TO_CURR(data->curr_sense, data->curr_gain));
}
