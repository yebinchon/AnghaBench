
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_kms {int dummy; } ;
struct msm_drm_private {scalar_t__* dsi; } ;
struct msm_display_info {int* h_tile_instance; size_t num_of_h_tiles; int capabilities; int intf_type; } ;
struct TYPE_3__ {int id; } ;
struct drm_encoder {TYPE_1__ base; TYPE_2__* dev; int encoder_type; } ;
typedef int info ;
struct TYPE_4__ {struct msm_drm_private* dev_private; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int DPU_ERROR (char*,int ,int) ;
 int MSM_DISPLAY_CAP_CMD_MODE ;
 int MSM_DISPLAY_CAP_VID_MODE ;
 int dpu_encoder_setup (TYPE_2__*,struct drm_encoder*,struct msm_display_info*) ;
 int memset (struct msm_display_info*,int ,int) ;

__attribute__((used)) static void _dpu_kms_set_encoder_mode(struct msm_kms *kms,
     struct drm_encoder *encoder,
     bool cmd_mode)
{
 struct msm_display_info info;
 struct msm_drm_private *priv = encoder->dev->dev_private;
 int i, rc = 0;

 memset(&info, 0, sizeof(info));

 info.intf_type = encoder->encoder_type;
 info.capabilities = cmd_mode ? MSM_DISPLAY_CAP_CMD_MODE :
   MSM_DISPLAY_CAP_VID_MODE;


 for (i = 0; i < ARRAY_SIZE(priv->dsi); i++) {
  if (priv->dsi[i]) {
   info.h_tile_instance[info.num_of_h_tiles] = i;
   info.num_of_h_tiles++;
  }
 }

 rc = dpu_encoder_setup(encoder->dev, encoder, &info);
 if (rc)
  DPU_ERROR("failed to setup DPU encoder %d: rc:%d\n",
   encoder->base.id, rc);
}
