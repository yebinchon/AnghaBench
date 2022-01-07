
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mode; int output_mode; int load; scalar_t__ range; scalar_t__ size; } ;
struct TYPE_3__ {TYPE_2__ i; } ;
struct nv50_wndw_atom {TYPE_1__ xlut; } ;
struct nv50_wndw {int dummy; } ;


 int head907d_olut_load ;

__attribute__((used)) static void
wndwc37e_ilut(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw)
{
 asyw->xlut.i.mode = 2;
 asyw->xlut.i.size = 0;
 asyw->xlut.i.range = 0;
 asyw->xlut.i.output_mode = 1;
 asyw->xlut.i.load = head907d_olut_load;
}
