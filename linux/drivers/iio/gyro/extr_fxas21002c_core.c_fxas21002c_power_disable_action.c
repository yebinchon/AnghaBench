
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int dummy; } ;


 int fxas21002c_power_disable (struct fxas21002c_data*) ;

__attribute__((used)) static void fxas21002c_power_disable_action(void *_data)
{
 struct fxas21002c_data *data = _data;

 fxas21002c_power_disable(data);
}
