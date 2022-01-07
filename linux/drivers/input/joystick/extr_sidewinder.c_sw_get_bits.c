
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;



__attribute__((used)) static __u64 sw_get_bits(unsigned char *buf, int pos, int num, char bits)
{
 __u64 data = 0;
 int tri = pos % bits;
 int i = pos / bits;
 int bit = 0;

 while (num--) {
  data |= (__u64)((buf[i] >> tri++) & 1) << bit++;
  if (tri == bits) {
   i++;
   tri = 0;
  }
 }

 return data;
}
