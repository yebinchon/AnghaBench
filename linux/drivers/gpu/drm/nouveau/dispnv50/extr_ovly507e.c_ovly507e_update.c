
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv50_wndw {int wndw; } ;


 size_t NV50_DISP_INTERLOCK_CORE ;
 int evo_data (int *,int ) ;
 int evo_kick (int *,int *) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (int *,int) ;

void
ovly507e_update(struct nv50_wndw *wndw, u32 *interlock)
{
 u32 *push;
 if ((push = evo_wait(&wndw->wndw, 2))) {
  evo_mthd(push, 0x0080, 1);
  evo_data(push, interlock[NV50_DISP_INTERLOCK_CORE]);
  evo_kick(push, &wndw->wndw);
 }
}
