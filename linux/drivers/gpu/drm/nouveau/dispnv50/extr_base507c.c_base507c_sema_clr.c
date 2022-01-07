
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv50_wndw {int wndw; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,int *) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (int *,int) ;

void
base507c_sema_clr(struct nv50_wndw *wndw)
{
 u32 *push;
 if ((push = evo_wait(&wndw->wndw, 2))) {
  evo_mthd(push, 0x0094, 1);
  evo_data(push, 0x00000000);
  evo_kick(push, &wndw->wndw);
 }
}
