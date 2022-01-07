
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct drm_connector {int eld; } ;
struct zx_hdmi {struct drm_connector connector; } ;
struct device {int dummy; } ;


 struct zx_hdmi* dev_get_drvdata (struct device*) ;
 int memcpy (int *,int ,int ) ;
 int min (int,size_t) ;

__attribute__((used)) static int zx_hdmi_audio_get_eld(struct device *dev, void *data,
     uint8_t *buf, size_t len)
{
 struct zx_hdmi *hdmi = dev_get_drvdata(dev);
 struct drm_connector *connector = &hdmi->connector;

 memcpy(buf, connector->eld, min(sizeof(connector->eld), len));

 return 0;
}
