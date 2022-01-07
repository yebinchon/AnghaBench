
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct msm_kms {int dummy; } ;
struct mdp4_kms {int rev; int clk; struct drm_device* dev; } ;
struct TYPE_2__ {int allow_fb_modifiers; } ;
struct drm_device {int dev; TYPE_1__ mode_config; } ;


 int DBG (char*,int,int) ;
 int DMA_E ;
 int DMA_P ;
 int DRM_DEV_ERROR (int ,char*,int,int) ;
 int ENXIO ;
 int FIELD (int,int ) ;
 int MDP4_VERSION_MAJOR ;
 int MDP4_VERSION_MINOR ;
 int REG_MDP4_CS_CONTROLLER0 ;
 int REG_MDP4_CS_CONTROLLER1 ;
 int REG_MDP4_DMA_FETCH_CONFIG (int ) ;
 int REG_MDP4_DMA_P_OP_MODE ;
 int REG_MDP4_DMA_S_OP_MODE ;
 int REG_MDP4_LAYERMIXER_IN_CFG ;
 int REG_MDP4_LAYERMIXER_IN_CFG_UPDATE_METHOD ;
 int REG_MDP4_OVLP_CSC_CONFIG (int) ;
 int REG_MDP4_PIPE_FETCH_CONFIG (int ) ;
 int REG_MDP4_PIPE_OP_MODE (int ) ;
 int REG_MDP4_PORTMAP_MODE ;
 int REG_MDP4_READ_CNFG ;
 int REG_MDP4_RESET_STATUS ;
 int REG_MDP4_VERSION ;
 int RGB1 ;
 int RGB2 ;
 int VG1 ;
 int VG2 ;
 unsigned long clk_get_rate (int ) ;
 int mdp4_disable (struct mdp4_kms*) ;
 int mdp4_enable (struct mdp4_kms*) ;
 int mdp4_read (struct mdp4_kms*,int ) ;
 int mdp4_write (struct mdp4_kms*,int ,int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 struct mdp4_kms* to_mdp4_kms (int ) ;
 int to_mdp_kms (struct msm_kms*) ;

__attribute__((used)) static int mdp4_hw_init(struct msm_kms *kms)
{
 struct mdp4_kms *mdp4_kms = to_mdp4_kms(to_mdp_kms(kms));
 struct drm_device *dev = mdp4_kms->dev;
 uint32_t version, major, minor, dmap_cfg, vg_cfg;
 unsigned long clk;
 int ret = 0;

 pm_runtime_get_sync(dev->dev);

 mdp4_enable(mdp4_kms);
 version = mdp4_read(mdp4_kms, REG_MDP4_VERSION);
 mdp4_disable(mdp4_kms);

 major = FIELD(version, MDP4_VERSION_MAJOR);
 minor = FIELD(version, MDP4_VERSION_MINOR);

 DBG("found MDP4 version v%d.%d", major, minor);

 if (major != 4) {
  DRM_DEV_ERROR(dev->dev, "unexpected MDP version: v%d.%d\n",
    major, minor);
  ret = -ENXIO;
  goto out;
 }

 mdp4_kms->rev = minor;

 if (mdp4_kms->rev > 1) {
  mdp4_write(mdp4_kms, REG_MDP4_CS_CONTROLLER0, 0x0707ffff);
  mdp4_write(mdp4_kms, REG_MDP4_CS_CONTROLLER1, 0x03073f3f);
 }

 mdp4_write(mdp4_kms, REG_MDP4_PORTMAP_MODE, 0x3);


 mdp4_write(mdp4_kms, REG_MDP4_READ_CNFG, 0x02222);

 clk = clk_get_rate(mdp4_kms->clk);

 if ((mdp4_kms->rev >= 1) || (clk >= 90000000)) {
  dmap_cfg = 0x47;
  vg_cfg = 0x47;
 } else {
  dmap_cfg = 0x27;
  vg_cfg = 0x43;
 }

 DBG("fetch config: dmap=%02x, vg=%02x", dmap_cfg, vg_cfg);

 mdp4_write(mdp4_kms, REG_MDP4_DMA_FETCH_CONFIG(DMA_P), dmap_cfg);
 mdp4_write(mdp4_kms, REG_MDP4_DMA_FETCH_CONFIG(DMA_E), dmap_cfg);

 mdp4_write(mdp4_kms, REG_MDP4_PIPE_FETCH_CONFIG(VG1), vg_cfg);
 mdp4_write(mdp4_kms, REG_MDP4_PIPE_FETCH_CONFIG(VG2), vg_cfg);
 mdp4_write(mdp4_kms, REG_MDP4_PIPE_FETCH_CONFIG(RGB1), vg_cfg);
 mdp4_write(mdp4_kms, REG_MDP4_PIPE_FETCH_CONFIG(RGB2), vg_cfg);

 if (mdp4_kms->rev >= 2)
  mdp4_write(mdp4_kms, REG_MDP4_LAYERMIXER_IN_CFG_UPDATE_METHOD, 1);
 mdp4_write(mdp4_kms, REG_MDP4_LAYERMIXER_IN_CFG, 0);


 mdp4_write(mdp4_kms, REG_MDP4_PIPE_OP_MODE(VG1), 0);
 mdp4_write(mdp4_kms, REG_MDP4_PIPE_OP_MODE(VG2), 0);
 mdp4_write(mdp4_kms, REG_MDP4_DMA_P_OP_MODE, 0);
 mdp4_write(mdp4_kms, REG_MDP4_DMA_S_OP_MODE, 0);
 mdp4_write(mdp4_kms, REG_MDP4_OVLP_CSC_CONFIG(1), 0);
 mdp4_write(mdp4_kms, REG_MDP4_OVLP_CSC_CONFIG(2), 0);

 if (mdp4_kms->rev > 1)
  mdp4_write(mdp4_kms, REG_MDP4_RESET_STATUS, 1);

 dev->mode_config.allow_fb_modifiers = 1;

out:
 pm_runtime_put_sync(dev->dev);

 return ret;
}
