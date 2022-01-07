
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int usage_id_cmp(const void *p1, const void *p2)
{
 if (*(int *)p1 < *(int *)p2)
  return -1;

 if (*(int *)p1 > *(int *)p2)
  return 1;

 return 0;
}
