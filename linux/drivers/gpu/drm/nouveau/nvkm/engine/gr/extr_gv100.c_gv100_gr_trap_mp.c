
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf100_gr {int dummy; } ;


 int gv100_gr_trap_sm (struct gf100_gr*,int,int,int) ;

__attribute__((used)) static void
gv100_gr_trap_mp(struct gf100_gr *gr, int gpc, int tpc)
{
 gv100_gr_trap_sm(gr, gpc, tpc, 0);
 gv100_gr_trap_sm(gr, gpc, tpc, 1);
}
