
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dummy; } ;


 int STUB_FUNC_ALL ;
 int functionality ;

__attribute__((used)) static u32 stub_func(struct i2c_adapter *adapter)
{
 return STUB_FUNC_ALL & functionality;
}
