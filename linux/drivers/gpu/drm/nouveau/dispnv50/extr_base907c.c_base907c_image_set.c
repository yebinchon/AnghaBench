
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mode; int interval; int* handle; int* offset; int h; int w; int layout; int* pitch; int* blocks; int blockh; int format; } ;
struct nv50_wndw_atom {TYPE_1__ image; } ;
struct nv50_wndw {int wndw; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,int *) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (int *,int) ;

__attribute__((used)) static void
base907c_image_set(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw)
{
 u32 *push;
 if ((push = evo_wait(&wndw->wndw, 10))) {
  evo_mthd(push, 0x0084, 1);
  evo_data(push, asyw->image.mode << 8 |
          asyw->image.interval << 4);
  evo_mthd(push, 0x00c0, 1);
  evo_data(push, asyw->image.handle[0]);
  evo_mthd(push, 0x0400, 5);
  evo_data(push, asyw->image.offset[0] >> 8);
  evo_data(push, 0x00000000);
  evo_data(push, asyw->image.h << 16 | asyw->image.w);
  evo_data(push, asyw->image.layout << 24 |
          (asyw->image.pitch[0] >> 8) << 8 |
          asyw->image.blocks[0] << 8 |
          asyw->image.blockh);
  evo_data(push, asyw->image.format << 8);
  evo_kick(push, &wndw->wndw);
 }
}
