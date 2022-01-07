
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool pm_checkpacket(unsigned char *packet)
{
 int total = 0;
 int i;

 for (i = 0; i < 5; i++)
  total += packet[i];

 return packet[5] == (unsigned char)~(total & 0xff);
}
