
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msm_kms {TYPE_2__* funcs; } ;
struct msm_edp {int ctrl; int encoder; } ;
struct msm_drm_private {struct msm_kms* kms; } ;
struct edp_connector {struct msm_edp* edp; } ;
struct drm_display_mode {int clock; } ;
struct TYPE_6__ {int bpc; } ;
struct drm_connector {TYPE_3__ display_info; TYPE_1__* dev; } ;
struct TYPE_5__ {long (* round_pixclk ) (struct msm_kms*,long,int ) ;} ;
struct TYPE_4__ {struct msm_drm_private* dev_private; } ;


 int DBG (char*,long,long) ;
 int MODE_BAD ;
 int MODE_CLOCK_RANGE ;
 int MODE_OK ;
 int msm_edp_ctrl_pixel_clock_valid (int ,int,int *,int *) ;
 long stub1 (struct msm_kms*,long,int ) ;
 struct edp_connector* to_edp_connector (struct drm_connector*) ;

__attribute__((used)) static int edp_connector_mode_valid(struct drm_connector *connector,
     struct drm_display_mode *mode)
{
 struct edp_connector *edp_connector = to_edp_connector(connector);
 struct msm_edp *edp = edp_connector->edp;
 struct msm_drm_private *priv = connector->dev->dev_private;
 struct msm_kms *kms = priv->kms;
 long actual, requested;

 requested = 1000 * mode->clock;
 actual = kms->funcs->round_pixclk(kms,
   requested, edp_connector->edp->encoder);

 DBG("requested=%ld, actual=%ld", requested, actual);
 if (actual != requested)
  return MODE_CLOCK_RANGE;

 if (!msm_edp_ctrl_pixel_clock_valid(
  edp->ctrl, mode->clock, ((void*)0), ((void*)0)))
  return MODE_CLOCK_RANGE;


 if (connector->display_info.bpc > 8)
  return MODE_BAD;

 return MODE_OK;
}
