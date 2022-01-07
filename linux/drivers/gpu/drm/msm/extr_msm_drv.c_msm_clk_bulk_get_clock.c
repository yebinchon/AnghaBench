
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_bulk_data {struct clk* clk; int id; } ;
struct clk {int dummy; } ;
typedef int n ;


 int snprintf (char*,int,char*,char const*) ;
 int strcmp (int ,char const*) ;

struct clk *msm_clk_bulk_get_clock(struct clk_bulk_data *bulk, int count,
  const char *name)
{
 int i;
 char n[32];

 snprintf(n, sizeof(n), "%s_clk", name);

 for (i = 0; bulk && i < count; i++) {
  if (!strcmp(bulk[i].id, name) || !strcmp(bulk[i].id, n))
   return bulk[i].clk;
 }


 return ((void*)0);
}
