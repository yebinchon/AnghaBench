
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_device {int dummy; } ;
struct device {int dummy; } ;


 struct stm_device* to_stm_device (struct device*) ;
 int vfree (struct stm_device*) ;

__attribute__((used)) static void stm_device_release(struct device *dev)
{
 struct stm_device *stm = to_stm_device(dev);

 vfree(stm);
}
