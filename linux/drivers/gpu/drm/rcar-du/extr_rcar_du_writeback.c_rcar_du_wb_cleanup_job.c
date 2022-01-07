
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_wb_job {int sg_tables; } ;
struct rcar_du_crtc {int vsp; } ;
struct drm_writeback_job {int fb; struct rcar_du_wb_job* priv; } ;
struct drm_writeback_connector {int dummy; } ;


 int kfree (struct rcar_du_wb_job*) ;
 int rcar_du_vsp_unmap_fb (int ,int ,int ) ;
 struct rcar_du_crtc* wb_to_rcar_crtc (struct drm_writeback_connector*) ;

__attribute__((used)) static void rcar_du_wb_cleanup_job(struct drm_writeback_connector *connector,
       struct drm_writeback_job *job)
{
 struct rcar_du_crtc *rcrtc = wb_to_rcar_crtc(connector);
 struct rcar_du_wb_job *rjob = job->priv;

 if (!job->fb)
  return;

 rcar_du_vsp_unmap_fb(rcrtc->vsp, job->fb, rjob->sg_tables);
 kfree(rjob);
}
