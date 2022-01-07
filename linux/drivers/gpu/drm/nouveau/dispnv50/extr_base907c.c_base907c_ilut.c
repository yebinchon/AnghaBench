
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int enable; int load; } ;
struct TYPE_4__ {TYPE_1__ i; } ;
struct nv50_wndw_atom {TYPE_2__ xlut; } ;
struct nv50_wndw {int dummy; } ;


 int head907d_olut_load ;

__attribute__((used)) static void
base907c_ilut(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw)
{
 asyw->xlut.i.mode = 7;
 asyw->xlut.i.enable = 2;
 asyw->xlut.i.load = head907d_olut_load;
}
