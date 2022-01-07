
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long cur_freq; } ;
struct panfrost_device {TYPE_1__ devfreq; } ;
struct device {int dummy; } ;


 struct panfrost_device* platform_get_drvdata (int ) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static int panfrost_devfreq_get_cur_freq(struct device *dev, unsigned long *freq)
{
 struct panfrost_device *pfdev = platform_get_drvdata(to_platform_device(dev));

 *freq = pfdev->devfreq.cur_freq;

 return 0;
}
