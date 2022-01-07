
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hdmiphy_configs {int count; TYPE_2__* data; } ;
struct hdmi_context {int dev; TYPE_1__* drv_data; } ;
struct TYPE_4__ {scalar_t__ pixel_clock; } ;
struct TYPE_3__ {struct hdmiphy_configs phy_confs; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,scalar_t__) ;
 int EINVAL ;

__attribute__((used)) static int hdmi_find_phy_conf(struct hdmi_context *hdata, u32 pixel_clock)
{
 const struct hdmiphy_configs *confs = &hdata->drv_data->phy_confs;
 int i;

 for (i = 0; i < confs->count; i++)
  if (confs->data[i].pixel_clock == pixel_clock)
   return i;

 DRM_DEV_DEBUG_KMS(hdata->dev, "Could not find phy config for %d\n",
     pixel_clock);
 return -EINVAL;
}
