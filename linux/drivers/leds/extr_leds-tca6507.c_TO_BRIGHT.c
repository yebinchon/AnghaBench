
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int TO_BRIGHT(int level)
{
 if (level)
  return (level << 4) | 0xf;
 return 0;
}
