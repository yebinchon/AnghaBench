
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_win_data {int dummy; } ;
struct vop_win {int * yuv2yuv_data; struct vop* vop; struct vop_win_data const* data; } ;
struct vop_data {unsigned int win_size; int * win_yuv2yuv; struct vop_win_data* win; } ;
struct vop {struct vop_win* win; struct vop_data* data; } ;



__attribute__((used)) static void vop_win_init(struct vop *vop)
{
 const struct vop_data *vop_data = vop->data;
 unsigned int i;

 for (i = 0; i < vop_data->win_size; i++) {
  struct vop_win *vop_win = &vop->win[i];
  const struct vop_win_data *win_data = &vop_data->win[i];

  vop_win->data = win_data;
  vop_win->vop = vop;

  if (vop_data->win_yuv2yuv)
   vop_win->yuv2yuv_data = &vop_data->win_yuv2yuv[i];
 }
}
