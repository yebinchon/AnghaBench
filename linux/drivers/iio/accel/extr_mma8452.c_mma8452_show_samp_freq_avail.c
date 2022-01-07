
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int ) ;
 int mma8452_samp_freq ;
 int mma8452_show_int_plus_micros (char*,int ,int ) ;

__attribute__((used)) static ssize_t mma8452_show_samp_freq_avail(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 return mma8452_show_int_plus_micros(buf, mma8452_samp_freq,
         ARRAY_SIZE(mma8452_samp_freq));
}
