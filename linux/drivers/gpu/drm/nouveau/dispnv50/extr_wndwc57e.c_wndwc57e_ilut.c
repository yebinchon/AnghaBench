
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int mode; int size; int load; scalar_t__ output_mode; } ;
struct TYPE_4__ {TYPE_3__ i; } ;
struct nv50_wndw_atom {TYPE_1__ xlut; TYPE_2__* ilut; } ;
struct nv50_wndw {int dummy; } ;
struct drm_color_lut {int dummy; } ;
struct TYPE_5__ {int length; } ;


 int wndwc57e_ilut_load ;

__attribute__((used)) static void
wndwc57e_ilut(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw)
{
 u16 size = asyw->ilut->length / sizeof(struct drm_color_lut);
 if (size == 256) {
  asyw->xlut.i.mode = 1;
 } else {
  asyw->xlut.i.mode = 2;
  size = 1024;
 }
 asyw->xlut.i.size = 4 + size + 1 ;
 asyw->xlut.i.output_mode = 0;
 asyw->xlut.i.load = wndwc57e_ilut_load;
}
