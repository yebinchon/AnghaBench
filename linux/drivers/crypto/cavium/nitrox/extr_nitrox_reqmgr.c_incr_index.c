
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int incr_index(int index, int count, int max)
{
 if ((index + count) >= max)
  index = index + count - max;
 else
  index += count;

 return index;
}
