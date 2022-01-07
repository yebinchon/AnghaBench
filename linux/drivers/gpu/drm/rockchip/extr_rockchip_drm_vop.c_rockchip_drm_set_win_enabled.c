
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_win_data {int dummy; } ;
struct vop_win {struct vop_win_data* data; } ;
struct vop {int win_enabled; int reg_lock; struct vop_win* win; TYPE_1__* data; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int win_size; } ;


 int BIT (int) ;
 int VOP_WIN_SET (struct vop*,struct vop_win_data const*,int ,int) ;
 int enable ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vop* to_vop (struct drm_crtc*) ;
 int vop_cfg_done (struct vop*) ;

__attribute__((used)) static void rockchip_drm_set_win_enabled(struct drm_crtc *crtc, bool enabled)
{
        struct vop *vop = to_vop(crtc);
        int i;

        spin_lock(&vop->reg_lock);

        for (i = 0; i < vop->data->win_size; i++) {
                struct vop_win *vop_win = &vop->win[i];
                const struct vop_win_data *win = vop_win->data;

                VOP_WIN_SET(vop, win, enable,
                            enabled && (vop->win_enabled & BIT(i)));
        }
        vop_cfg_done(vop);

        spin_unlock(&vop->reg_lock);
}
