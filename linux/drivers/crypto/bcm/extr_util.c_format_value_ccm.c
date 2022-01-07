
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memset (int*,int ,int) ;

void format_value_ccm(unsigned int val, u8 *buf, u8 len)
{
 int i;


 memset(buf, 0, len);


 for (i = 0; i < len; i++) {
  buf[len - i - 1] = (val >> (8 * i)) & 0xff;
  if (i >= 3)
   break;
 }
}
