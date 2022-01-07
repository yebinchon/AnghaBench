
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_clock_t {int m; int m1; int m2; int p; int p1; int p2; int vco; int n; int dot; } ;



__attribute__((used)) static void psb_intel_clock(int refclk, struct gma_clock_t *clock)
{
 clock->m = 5 * (clock->m1 + 2) + (clock->m2 + 2);
 clock->p = clock->p1 * clock->p2;
 clock->vco = refclk * clock->m / (clock->n + 2);
 clock->dot = clock->vco / clock->p;
}
