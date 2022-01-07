
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_du_crtc {int crtc; scalar_t__ vblank_enable; } ;


 unsigned int VSP1_DU_STATUS_COMPLETE ;
 unsigned int VSP1_DU_STATUS_WRITEBACK ;
 int drm_crtc_add_crc_entry (int *,int,int ,int *) ;
 int drm_crtc_handle_vblank (int *) ;
 int rcar_du_crtc_finish_page_flip (struct rcar_du_crtc*) ;
 int rcar_du_writeback_complete (struct rcar_du_crtc*) ;

__attribute__((used)) static void rcar_du_vsp_complete(void *private, unsigned int status, u32 crc)
{
 struct rcar_du_crtc *crtc = private;

 if (crtc->vblank_enable)
  drm_crtc_handle_vblank(&crtc->crtc);

 if (status & VSP1_DU_STATUS_COMPLETE)
  rcar_du_crtc_finish_page_flip(crtc);
 if (status & VSP1_DU_STATUS_WRITEBACK)
  rcar_du_writeback_complete(crtc);

 drm_crtc_add_crc_entry(&crtc->crtc, 0, 0, &crc);
}
