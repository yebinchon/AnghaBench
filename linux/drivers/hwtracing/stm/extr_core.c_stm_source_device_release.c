
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_source_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct stm_source_device*) ;
 struct stm_source_device* to_stm_source_device (struct device*) ;

__attribute__((used)) static void stm_source_device_release(struct device *dev)
{
 struct stm_source_device *src = to_stm_source_device(dev);

 kfree(src);
}
