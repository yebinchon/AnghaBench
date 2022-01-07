
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8350 {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int WM8350_AUX_COEFF ;
 struct wm8350* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int wm8350_read_auxadc (struct wm8350*,int,int ,int ) ;

__attribute__((used)) static ssize_t show_voltage(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct wm8350 *wm8350 = dev_get_drvdata(dev);
 int channel = to_sensor_dev_attr(attr)->index;
 int val;

 val = wm8350_read_auxadc(wm8350, channel, 0, 0) * WM8350_AUX_COEFF;
 val = DIV_ROUND_CLOSEST(val, 1000);

 return sprintf(buf, "%d\n", val);
}
