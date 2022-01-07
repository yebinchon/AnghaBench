
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi {struct drm_encoder* encoder; } ;
struct drm_encoder {int dummy; } ;


 int msm_dsi_device_connected (struct msm_dsi*) ;

struct drm_encoder *msm_dsi_get_encoder(struct msm_dsi *msm_dsi)
{
 if (!msm_dsi || !msm_dsi_device_connected(msm_dsi))
  return ((void*)0);

 return msm_dsi->encoder;
}
