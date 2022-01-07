
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int corsair_usage_to_gkey(unsigned int usage)
{

 if (usage >= 0xd0 && usage <= 0xdf)
  return usage - 0xd0 + 1;

 if (usage >= 0xe8 && usage <= 0xe9)
  return usage - 0xe8 + 17;
 return 0;
}
