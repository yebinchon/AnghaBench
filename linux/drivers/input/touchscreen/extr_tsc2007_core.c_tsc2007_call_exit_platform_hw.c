
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc2007_platform_data {int (* exit_platform_hw ) () ;} ;
struct device {int dummy; } ;


 struct tsc2007_platform_data* dev_get_platdata (struct device*) ;
 int stub1 () ;

__attribute__((used)) static void tsc2007_call_exit_platform_hw(void *data)
{
 struct device *dev = data;
 const struct tsc2007_platform_data *pdata = dev_get_platdata(dev);

 pdata->exit_platform_hw();
}
