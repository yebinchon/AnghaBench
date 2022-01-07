
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_wb_job {int sg_tables; } ;
struct rcar_du_crtc {int vsp; } ;
struct drm_writeback_job {struct rcar_du_wb_job* priv; int fb; } ;
struct drm_writeback_connector {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct rcar_du_wb_job*) ;
 struct rcar_du_wb_job* kzalloc (int,int ) ;
 int rcar_du_vsp_map_fb (int ,int ,int ) ;
 struct rcar_du_crtc* wb_to_rcar_crtc (struct drm_writeback_connector*) ;

__attribute__((used)) static int rcar_du_wb_prepare_job(struct drm_writeback_connector *connector,
      struct drm_writeback_job *job)
{
 struct rcar_du_crtc *rcrtc = wb_to_rcar_crtc(connector);
 struct rcar_du_wb_job *rjob;
 int ret;

 if (!job->fb)
  return 0;

 rjob = kzalloc(sizeof(*rjob), GFP_KERNEL);
 if (!rjob)
  return -ENOMEM;


 ret = rcar_du_vsp_map_fb(rcrtc->vsp, job->fb, rjob->sg_tables);
 if (ret < 0) {
  kfree(rjob);
  return ret;
 }

 job->priv = rjob;
 return 0;
}
