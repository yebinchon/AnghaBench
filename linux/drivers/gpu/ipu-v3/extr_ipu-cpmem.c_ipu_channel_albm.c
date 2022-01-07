
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
__attribute__((used)) static int ipu_channel_albm(int ch_num)
{
 switch (ch_num) {
 case 133: return 0;
 case 134: return 1;
 case 129: return 2;
 case 130: return 3;
 case 131: return 4;
 case 132: return 5;
 case 128: return 6;
 default:
  return -EINVAL;
 }
}
