
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ mode; } ;
struct rcar_du_crtc {int group; TYPE_2__ crtc; } ;


 int DRM_MODE_FLAG_INTERLACE ;
 int DSYSR_SCM_INT_VIDEO ;
 int DSYSR_SCM_MASK ;
 int DSYSR_TVM_MASK ;
 int DSYSR_TVM_MASTER ;
 int rcar_du_crtc_dsysr_clr_set (struct rcar_du_crtc*,int,int) ;
 int rcar_du_group_start_stop (int ,int) ;

__attribute__((used)) static void rcar_du_crtc_start(struct rcar_du_crtc *rcrtc)
{
 bool interlaced;






 interlaced = rcrtc->crtc.mode.flags & DRM_MODE_FLAG_INTERLACE;
 rcar_du_crtc_dsysr_clr_set(rcrtc, DSYSR_TVM_MASK | DSYSR_SCM_MASK,
       (interlaced ? DSYSR_SCM_INT_VIDEO : 0) |
       DSYSR_TVM_MASTER);

 rcar_du_group_start_stop(rcrtc->group, 1);
}
