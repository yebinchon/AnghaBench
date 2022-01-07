
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* power_on ) () ;} ;
struct kxtj9_data {TYPE_1__ pdata; } ;


 int stub1 () ;

__attribute__((used)) static int kxtj9_device_power_on(struct kxtj9_data *tj9)
{
 if (tj9->pdata.power_on)
  return tj9->pdata.power_on();

 return 0;
}
