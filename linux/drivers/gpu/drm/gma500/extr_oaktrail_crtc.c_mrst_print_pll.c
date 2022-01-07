
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_clock_t {int p2; int p1; int n; int m2; int m1; int m; int dot; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void mrst_print_pll(struct gma_clock_t *clock)
{
 DRM_DEBUG_DRIVER("dotclock=%d,  m=%d, m1=%d, m2=%d, n=%d, p1=%d, p2=%d\n",
    clock->dot, clock->m, clock->m1, clock->m2, clock->n,
    clock->p1, clock->p2);
}
