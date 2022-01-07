
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int y; int x; } ;
struct nv50_wndw_atom {TYPE_1__ point; } ;
struct nv50_wndw {int wimm; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,int *) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (int *,int) ;

__attribute__((used)) static void
wimmc37b_point(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw)
{
 u32 *push;
 if ((push = evo_wait(&wndw->wimm, 2))) {
  evo_mthd(push, 0x0208, 1);
  evo_data(push, asyw->point.y << 16 | asyw->point.x);
  evo_kick(push, &wndw->wimm);
 }
}
