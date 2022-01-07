
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int wildcard_to_pool(int wc)
{
 if (wc >= 0)
  return -1;
 return -wc - 1;
}
