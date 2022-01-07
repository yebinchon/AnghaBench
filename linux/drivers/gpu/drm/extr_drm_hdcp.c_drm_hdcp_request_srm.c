
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct drm_device {int dev; } ;


 int drm_hdcp_srm_update (scalar_t__,scalar_t__) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware_direct (struct firmware const**,char const*,int ) ;

__attribute__((used)) static void drm_hdcp_request_srm(struct drm_device *drm_dev)
{
 char fw_name[36] = "display_hdcp_srm.bin";
 const struct firmware *fw;

 int ret;

 ret = request_firmware_direct(&fw, (const char *)fw_name,
          drm_dev->dev);
 if (ret < 0)
  goto exit;

 if (fw->size && fw->data)
  drm_hdcp_srm_update(fw->data, fw->size);

exit:
 release_firmware(fw);
}
