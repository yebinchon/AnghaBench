
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int * ulaw_to_alaw ;

int
l1oip_ulaw_to_alaw(u8 *data, int len, u8 *result)
{
 int i = 0;

 while (i < len) {
  *result++ = ulaw_to_alaw[*data++];
  i++;
 }

 return len;
}
