
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mode; int size; int output_mode; int load; } ;
struct TYPE_5__ {TYPE_1__* gamma_lut; } ;
struct nv50_head_atom {TYPE_3__ olut; TYPE_2__ state; } ;
struct nv50_head {int dummy; } ;
struct drm_color_lut {int dummy; } ;
struct TYPE_4__ {int length; } ;


 int headc57d_olut_load ;
 int headc57d_olut_load_8 ;

void
headc57d_olut(struct nv50_head *head, struct nv50_head_atom *asyh)
{
 asyh->olut.mode = 2;
 asyh->olut.size = 4 + 1024 + 1 ;
 asyh->olut.output_mode = 1;
 if (asyh->state.gamma_lut &&
     asyh->state.gamma_lut->length / sizeof(struct drm_color_lut) == 256)
  asyh->olut.load = headc57d_olut_load_8;
 else
  asyh->olut.load = headc57d_olut_load;
}
