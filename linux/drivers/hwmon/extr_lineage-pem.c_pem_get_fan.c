
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;





 int WARN_ON_ONCE (int) ;

__attribute__((used)) static long pem_get_fan(u8 *data, int len, int index)
{
 long val;

 switch (index) {
 case 130:
 case 129:
 case 128:
  val = data[index] * 100;
  break;
 default:
  WARN_ON_ONCE(1);
  val = 0;
 }
 return val;
}
