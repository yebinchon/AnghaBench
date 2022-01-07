
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 calc_lrc(u8 *buf, int len)
{
 int i;
 u8 sum = 0;
 for (i = 0; i < len; i++)
  sum = sum ^ buf[i];
 return sum;
}
