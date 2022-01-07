
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrst_clock_t {int dot; int m; int p1; } ;



__attribute__((used)) static void mdfld_clock(int refclk, struct mrst_clock_t *clock)
{
 clock->dot = (refclk * clock->m) / clock->p1;
}
