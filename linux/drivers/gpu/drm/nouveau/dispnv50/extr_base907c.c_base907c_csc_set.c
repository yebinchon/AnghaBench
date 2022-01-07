
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* matrix; } ;
struct nv50_wndw_atom {TYPE_1__ csc; } ;
struct nv50_wndw {int wndw; } ;


 int evo_data (int*,int) ;
 int evo_kick (int*,int *) ;
 int evo_mthd (int*,int,int) ;
 int* evo_wait (int *,int) ;

__attribute__((used)) static void
base907c_csc_set(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw)
{
 u32 *push, i;
 if ((push = evo_wait(&wndw->wndw, 13))) {
  evo_mthd(push, 0x0140, 12);
  evo_data(push, asyw->csc.matrix[0] | 0x80000000);
  for (i = 1; i < 12; i++)
   evo_data(push, asyw->csc.matrix[i]);
  evo_kick(push, &wndw->wndw);
 }
}
