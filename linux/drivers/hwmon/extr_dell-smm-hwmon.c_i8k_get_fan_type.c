
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _i8k_get_fan_type (int) ;

__attribute__((used)) static int i8k_get_fan_type(int fan)
{

 static int types[3] = { 128, 128, 128 };

 if (types[fan] == 128)
  types[fan] = _i8k_get_fan_type(fan);

 return types[fan];
}
