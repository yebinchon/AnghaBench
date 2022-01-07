
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct drm_connector {int eld; } ;
struct hdmi_context {struct drm_connector connector; } ;
struct device {int dummy; } ;


 struct hdmi_context* dev_get_drvdata (struct device*) ;
 int memcpy (int *,int ,int ) ;
 int min (int,size_t) ;

__attribute__((used)) static int hdmi_audio_get_eld(struct device *dev, void *data, uint8_t *buf,
         size_t len)
{
 struct hdmi_context *hdata = dev_get_drvdata(dev);
 struct drm_connector *connector = &hdata->connector;

 memcpy(buf, connector->eld, min(sizeof(connector->eld), len));

 return 0;
}
