
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_selftest {int enabled; } ;



__attribute__((used)) static void set_default_test_all(struct drm_selftest *st, unsigned long count)
{
 unsigned long i;

 for (i = 0; i < count; i++)
  if (st[i].enabled)
   return;

 for (i = 0; i < count; i++)
  st[i].enabled = 1;
}
