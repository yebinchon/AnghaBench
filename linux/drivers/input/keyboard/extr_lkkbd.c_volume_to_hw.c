
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char volume_to_hw(int volume_percent)
{
 unsigned char ret = 0;

 if (volume_percent < 0)
  volume_percent = 0;
 if (volume_percent > 100)
  volume_percent = 100;

 if (volume_percent >= 0)
  ret = 7;
 if (volume_percent >= 13)
  ret = 6;
 if (volume_percent >= 25)
  ret = 5;
 if (volume_percent >= 38)
  ret = 4;
 if (volume_percent >= 50)
  ret = 3;
 if (volume_percent >= 63)
  ret = 2;
 if (volume_percent >= 75)
  ret = 1;
 if (volume_percent >= 88)
  ret = 0;

 ret |= 0x80;

 return ret;
}
