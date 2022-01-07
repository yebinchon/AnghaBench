
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__* matrix; } ;
struct nv50_wndw_atom {TYPE_1__ csc; } ;
struct nv50_wndw {int dummy; } ;
struct drm_color_ctm {int * matrix; } ;


 scalar_t__ csc_drm_to_base (int ) ;

void
base907c_csc(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw,
      const struct drm_color_ctm *ctm)
{
 int i, j;

 for (j = 0; j < 3; j++) {
  for (i = 0; i < 4; i++) {
   u32 *val = &asyw->csc.matrix[j * 4 + i];


   if (i == 3) {
    *val = 0;
   } else {
    *val = csc_drm_to_base(ctm->matrix[j * 3 + i]);
   }
  }
 }
}
