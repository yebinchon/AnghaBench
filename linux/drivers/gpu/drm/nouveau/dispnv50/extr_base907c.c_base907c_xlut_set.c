
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int enable; int mode; int offset; } ;
struct TYPE_4__ {int handle; TYPE_1__ i; } ;
struct nv50_wndw_atom {TYPE_2__ xlut; } ;
struct nv50_wndw {int wndw; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,int *) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (int *,int) ;

__attribute__((used)) static void
base907c_xlut_set(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw)
{
 u32 *push;
 if ((push = evo_wait(&wndw->wndw, 6))) {
  evo_mthd(push, 0x00e0, 3);
  evo_data(push, asyw->xlut.i.enable << 30 |
          asyw->xlut.i.mode << 24);
  evo_data(push, asyw->xlut.i.offset >> 8);
  evo_data(push, 0x40000000);
  evo_mthd(push, 0x00fc, 1);
  evo_data(push, asyw->xlut.handle);
  evo_kick(push, &wndw->wndw);
 }
}
