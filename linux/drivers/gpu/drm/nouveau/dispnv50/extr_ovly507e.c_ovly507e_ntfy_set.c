
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int awaken; int offset; int handle; } ;
struct nv50_wndw_atom {TYPE_1__ ntfy; } ;
struct nv50_wndw {int wndw; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,int *) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (int *,int) ;

void
ovly507e_ntfy_set(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw)
{
 u32 *push;
 if ((push = evo_wait(&wndw->wndw, 3))) {
  evo_mthd(push, 0x00a0, 2);
  evo_data(push, asyw->ntfy.awaken << 30 | asyw->ntfy.offset);
  evo_data(push, asyw->ntfy.handle);
  evo_kick(push, &wndw->wndw);
 }
}
