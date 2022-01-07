
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_pll {int name; } ;
struct dss_device {struct dss_pll** plls; } ;


 int ARRAY_SIZE (struct dss_pll**) ;
 scalar_t__ strcmp (int ,char const*) ;

struct dss_pll *dss_pll_find(struct dss_device *dss, const char *name)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dss->plls); ++i) {
  if (dss->plls[i] && strcmp(dss->plls[i]->name, name) == 0)
   return dss->plls[i];
 }

 return ((void*)0);
}
