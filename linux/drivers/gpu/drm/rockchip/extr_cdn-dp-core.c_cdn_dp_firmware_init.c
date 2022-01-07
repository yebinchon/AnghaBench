
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct cdn_firmware_header {int dram_size; scalar_t__ iram_size; scalar_t__ header_size; int size_bytes; } ;
struct cdn_dp_device {int dev; struct firmware* fw; } ;


 int DRM_DEV_ERROR (int ,char*,...) ;
 int EINVAL ;
 int cdn_dp_event_config (struct cdn_dp_device*) ;
 int cdn_dp_load_firmware (struct cdn_dp_device*,int const*,scalar_t__,int const*,int ) ;
 int cdn_dp_set_firmware_active (struct cdn_dp_device*,int) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int cdn_dp_firmware_init(struct cdn_dp_device *dp)
{
 int ret;
 const u32 *iram_data, *dram_data;
 const struct firmware *fw = dp->fw;
 const struct cdn_firmware_header *hdr;

 hdr = (struct cdn_firmware_header *)fw->data;
 if (fw->size != le32_to_cpu(hdr->size_bytes)) {
  DRM_DEV_ERROR(dp->dev, "firmware is invalid\n");
  return -EINVAL;
 }

 iram_data = (const u32 *)(fw->data + hdr->header_size);
 dram_data = (const u32 *)(fw->data + hdr->header_size + hdr->iram_size);

 ret = cdn_dp_load_firmware(dp, iram_data, hdr->iram_size,
       dram_data, hdr->dram_size);
 if (ret)
  return ret;

 ret = cdn_dp_set_firmware_active(dp, 1);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "active ucpu failed: %d\n", ret);
  return ret;
 }

 return cdn_dp_event_config(dp);
}
