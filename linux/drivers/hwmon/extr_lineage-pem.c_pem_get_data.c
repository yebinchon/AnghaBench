
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;







 int WARN_ON_ONCE (int) ;

__attribute__((used)) static long pem_get_data(u8 *data, int len, int index)
{
 long val;

 switch (index) {
 case 128:
  val = (data[index] + (data[index+1] << 8)) * 5 / 2;
  break;
 case 132:
  val = data[index] * 200;
  break;
 case 131:
  val = data[index] * 1000;
  break;
 case 129:
  val = 97 * 1000;
  break;
 case 130:
  val = 107 * 1000;
  break;
 default:
  WARN_ON_ONCE(1);
  val = 0;
 }
 return val;
}
