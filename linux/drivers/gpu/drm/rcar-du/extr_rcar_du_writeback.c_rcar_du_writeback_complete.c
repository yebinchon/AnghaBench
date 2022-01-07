
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_crtc {int writeback; } ;


 int drm_writeback_signal_completion (int *,int ) ;

void rcar_du_writeback_complete(struct rcar_du_crtc *rcrtc)
{
 drm_writeback_signal_completion(&rcrtc->writeback, 0);
}
