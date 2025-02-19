
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct platform_device {int dummy; } ;
struct mdp5_kms {struct drm_device* dev; } ;
struct mdp5_cfg_platform {int dummy; } ;
struct TYPE_3__ {int platform; TYPE_2__* hw; } ;
struct mdp5_cfg_handler {TYPE_1__ config; int revision; } ;
struct drm_device {int dev; } ;
struct TYPE_4__ {int name; } ;


 int ARRAY_SIZE (struct mdp5_cfg_handler*) ;
 int DBG (char*,int ) ;
 int DRM_DEV_ERROR (int ,char*,int ,int ) ;
 int ENOMEM ;
 int ENXIO ;
 struct mdp5_cfg_handler* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct mdp5_cfg_handler* cfg_handlers_v1 ;
 struct mdp5_cfg_handler* cfg_handlers_v3 ;
 struct mdp5_cfg_handler* kzalloc (int,int ) ;
 TYPE_2__* mdp5_cfg ;
 int mdp5_cfg_destroy (struct mdp5_cfg_handler*) ;
 struct mdp5_cfg_platform* mdp5_get_config (struct platform_device*) ;
 int memcpy (int *,struct mdp5_cfg_platform*,int) ;
 struct platform_device* to_platform_device (int ) ;
 scalar_t__ unlikely (int) ;

struct mdp5_cfg_handler *mdp5_cfg_init(struct mdp5_kms *mdp5_kms,
  uint32_t major, uint32_t minor)
{
 struct drm_device *dev = mdp5_kms->dev;
 struct platform_device *pdev = to_platform_device(dev->dev);
 struct mdp5_cfg_handler *cfg_handler;
 const struct mdp5_cfg_handler *cfg_handlers;
 struct mdp5_cfg_platform *pconfig;
 int i, ret = 0, num_handlers;

 cfg_handler = kzalloc(sizeof(*cfg_handler), GFP_KERNEL);
 if (unlikely(!cfg_handler)) {
  ret = -ENOMEM;
  goto fail;
 }

 switch (major) {
 case 1:
  cfg_handlers = cfg_handlers_v1;
  num_handlers = ARRAY_SIZE(cfg_handlers_v1);
  break;
 case 3:
  cfg_handlers = cfg_handlers_v3;
  num_handlers = ARRAY_SIZE(cfg_handlers_v3);
  break;
 default:
  DRM_DEV_ERROR(dev->dev, "unexpected MDP major version: v%d.%d\n",
    major, minor);
  ret = -ENXIO;
  goto fail;
 };


 for (i = 0; i < num_handlers; i++) {
  if (cfg_handlers[i].revision != minor)
   continue;
  mdp5_cfg = cfg_handlers[i].config.hw;

  break;
 }
 if (unlikely(!mdp5_cfg)) {
  DRM_DEV_ERROR(dev->dev, "unexpected MDP minor revision: v%d.%d\n",
    major, minor);
  ret = -ENXIO;
  goto fail;
 }

 cfg_handler->revision = minor;
 cfg_handler->config.hw = mdp5_cfg;

 pconfig = mdp5_get_config(pdev);
 memcpy(&cfg_handler->config.platform, pconfig, sizeof(*pconfig));

 DBG("MDP5: %s hw config selected", mdp5_cfg->name);

 return cfg_handler;

fail:
 if (cfg_handler)
  mdp5_cfg_destroy(cfg_handler);

 return ERR_PTR(ret);
}
