
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int src_y; int src_x; int src_h; int src_w; int crtc_h; int crtc_w; } ;
struct TYPE_5__ {int mode; int interval; int h; int w; int layout; int blockh; int colorspace; int format; int* blocks; int* pitch; int* handle; int* offset; } ;
struct TYPE_4__ {int valid; } ;
struct nv50_wndw_atom {TYPE_3__ state; TYPE_2__ image; TYPE_1__ csc; } ;
struct nv50_wndw {int wndw; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,int *) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (int *,int) ;

__attribute__((used)) static void
wndwc37e_image_set(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw)
{
 u32 *push;

 if (!(push = evo_wait(&wndw->wndw, 17)))
  return;

 evo_mthd(push, 0x0308, 1);
 evo_data(push, asyw->image.mode << 4 | asyw->image.interval);
 evo_mthd(push, 0x0224, 4);
 evo_data(push, asyw->image.h << 16 | asyw->image.w);
 evo_data(push, asyw->image.layout << 4 | asyw->image.blockh);
 evo_data(push, asyw->csc.valid << 17 |
         asyw->image.colorspace << 8 |
         asyw->image.format);
 evo_data(push, asyw->image.blocks[0] | (asyw->image.pitch[0] >> 6));
 evo_mthd(push, 0x0240, 1);
 evo_data(push, asyw->image.handle[0]);
 evo_mthd(push, 0x0260, 1);
 evo_data(push, asyw->image.offset[0] >> 8);
 evo_mthd(push, 0x0290, 1);
 evo_data(push, (asyw->state.src_y >> 16) << 16 |
         (asyw->state.src_x >> 16));
 evo_mthd(push, 0x0298, 1);
 evo_data(push, (asyw->state.src_h >> 16) << 16 |
         (asyw->state.src_w >> 16));
 evo_mthd(push, 0x02a4, 1);
 evo_data(push, asyw->state.crtc_h << 16 |
         asyw->state.crtc_w);
 evo_kick(push, &wndw->wndw);
}
