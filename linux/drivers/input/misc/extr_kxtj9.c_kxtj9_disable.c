
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxtj9_data {int dummy; } ;


 int kxtj9_device_power_off (struct kxtj9_data*) ;

__attribute__((used)) static void kxtj9_disable(struct kxtj9_data *tj9)
{
 kxtj9_device_power_off(tj9);
}
