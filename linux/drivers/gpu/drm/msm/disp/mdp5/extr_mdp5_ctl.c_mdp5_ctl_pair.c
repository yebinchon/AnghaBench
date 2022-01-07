
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdp5_kms {int dummy; } ;
struct mdp5_ctl_manager {TYPE_1__* dev; int single_flush_supported; } ;
struct mdp5_ctl {int status; struct mdp5_ctl* pair; struct mdp5_ctl_manager* ctlm; } ;
struct TYPE_2__ {int dev; } ;


 int CTL_STAT_BOOKED ;
 int DRM_DEV_ERROR (int ,char*) ;
 int EINVAL ;
 int MDP5_SPARE_0_SPLIT_DPL_SINGLE_FLUSH_EN ;
 int REG_MDP5_SPARE_0 ;
 struct mdp5_kms* get_kms (struct mdp5_ctl_manager*) ;
 int mdp5_write (struct mdp5_kms*,int ,int ) ;

int mdp5_ctl_pair(struct mdp5_ctl *ctlx, struct mdp5_ctl *ctly, bool enable)
{
 struct mdp5_ctl_manager *ctl_mgr = ctlx->ctlm;
 struct mdp5_kms *mdp5_kms = get_kms(ctl_mgr);


 if (!ctl_mgr->single_flush_supported)
  return 0;

 if (!enable) {
  ctlx->pair = ((void*)0);
  ctly->pair = ((void*)0);
  mdp5_write(mdp5_kms, REG_MDP5_SPARE_0, 0);
  return 0;
 } else if ((ctlx->pair != ((void*)0)) || (ctly->pair != ((void*)0))) {
  DRM_DEV_ERROR(ctl_mgr->dev->dev, "CTLs already paired\n");
  return -EINVAL;
 } else if (!(ctlx->status & ctly->status & CTL_STAT_BOOKED)) {
  DRM_DEV_ERROR(ctl_mgr->dev->dev, "Only pair booked CTLs\n");
  return -EINVAL;
 }

 ctlx->pair = ctly;
 ctly->pair = ctlx;

 mdp5_write(mdp5_kms, REG_MDP5_SPARE_0,
     MDP5_SPARE_0_SPLIT_DPL_SINGLE_FLUSH_EN);

 return 0;
}
