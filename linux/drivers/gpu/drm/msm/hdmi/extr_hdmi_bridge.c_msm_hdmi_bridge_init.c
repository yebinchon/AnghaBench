
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_bridge {int * funcs; } ;
struct hdmi_bridge {struct drm_bridge base; struct hdmi* hdmi; } ;
struct hdmi {int encoder; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 struct drm_bridge* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct hdmi_bridge* devm_kzalloc (int ,int,int ) ;
 int drm_bridge_attach (int ,struct drm_bridge*,int *) ;
 int msm_hdmi_bridge_destroy (struct drm_bridge*) ;
 int msm_hdmi_bridge_funcs ;

struct drm_bridge *msm_hdmi_bridge_init(struct hdmi *hdmi)
{
 struct drm_bridge *bridge = ((void*)0);
 struct hdmi_bridge *hdmi_bridge;
 int ret;

 hdmi_bridge = devm_kzalloc(hdmi->dev->dev,
   sizeof(*hdmi_bridge), GFP_KERNEL);
 if (!hdmi_bridge) {
  ret = -ENOMEM;
  goto fail;
 }

 hdmi_bridge->hdmi = hdmi;

 bridge = &hdmi_bridge->base;
 bridge->funcs = &msm_hdmi_bridge_funcs;

 ret = drm_bridge_attach(hdmi->encoder, bridge, ((void*)0));
 if (ret)
  goto fail;

 return bridge;

fail:
 if (bridge)
  msm_hdmi_bridge_destroy(bridge);

 return ERR_PTR(ret);
}
