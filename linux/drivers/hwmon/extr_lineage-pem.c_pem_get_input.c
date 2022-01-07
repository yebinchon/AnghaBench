
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int INPUT_STRING_LEN ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static long pem_get_input(u8 *data, int len, int index)
{
 long val;

 switch (index) {
 case 128:
  if (len == INPUT_STRING_LEN)
   val = (data[index] + (data[index+1] << 8) - 75) * 1000;
  else
   val = (data[index] - 75) * 1000;
  break;
 case 129:
  if (len == INPUT_STRING_LEN)
   index++;
  val = (data[index] + (data[index+1] << 8)) * 1000000L;
  break;
 default:
  WARN_ON_ONCE(1);
  val = 0;
 }
 return val;
}
