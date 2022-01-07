
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_clock_t {int dot; int m; int p1; } ;



__attribute__((used)) static void mrst_lvds_clock(int refclk, struct gma_clock_t *clock)
{
 clock->dot = (refclk * clock->m) / (14 * clock->p1);
}
