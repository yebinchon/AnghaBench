
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mdp5_kms {TYPE_2__* pdev; } ;
struct mdp5_encoder {int ctl; TYPE_1__* intf; } ;
struct drm_encoder {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int num; } ;


 int EINVAL ;
 int MDP5_SPLIT_DPL_LOWER_INTF1_TG_SYNC ;
 int MDP5_SPLIT_DPL_LOWER_INTF2_TG_SYNC ;
 int REG_MDP5_SPLIT_DPL_EN ;
 int REG_MDP5_SPLIT_DPL_LOWER ;
 int REG_MDP5_SPLIT_DPL_UPPER ;
 struct mdp5_kms* get_kms (struct drm_encoder*) ;
 int mdp5_ctl_pair (int ,int ,int) ;
 int mdp5_write (struct mdp5_kms*,int ,int) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 struct mdp5_encoder* to_mdp5_encoder (struct drm_encoder*) ;

int mdp5_vid_encoder_set_split_display(struct drm_encoder *encoder,
           struct drm_encoder *slave_encoder)
{
 struct mdp5_encoder *mdp5_encoder = to_mdp5_encoder(encoder);
 struct mdp5_encoder *mdp5_slave_enc = to_mdp5_encoder(slave_encoder);
 struct mdp5_kms *mdp5_kms;
 struct device *dev;
 int intf_num;
 u32 data = 0;

 if (!encoder || !slave_encoder)
  return -EINVAL;

 mdp5_kms = get_kms(encoder);
 intf_num = mdp5_encoder->intf->num;




 if (intf_num == 1)
  data |= MDP5_SPLIT_DPL_LOWER_INTF2_TG_SYNC;
 else if (intf_num == 2)
  data |= MDP5_SPLIT_DPL_LOWER_INTF1_TG_SYNC;
 else
  return -EINVAL;

 dev = &mdp5_kms->pdev->dev;

 pm_runtime_get_sync(dev);


 mdp5_write(mdp5_kms, REG_MDP5_SPLIT_DPL_UPPER, 0);
 mdp5_write(mdp5_kms, REG_MDP5_SPLIT_DPL_LOWER, data);
 mdp5_write(mdp5_kms, REG_MDP5_SPLIT_DPL_EN, 1);

 mdp5_ctl_pair(mdp5_encoder->ctl, mdp5_slave_enc->ctl, 1);

 pm_runtime_put_sync(dev);

 return 0;
}
