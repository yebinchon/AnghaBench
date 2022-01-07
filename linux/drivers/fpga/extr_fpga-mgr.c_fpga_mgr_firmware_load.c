
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct fpga_manager {int state; int name; struct device dev; } ;
struct fpga_image_info {int dummy; } ;
struct firmware {int size; int data; } ;


 int FPGA_MGR_STATE_FIRMWARE_REQ ;
 int FPGA_MGR_STATE_FIRMWARE_REQ_ERR ;
 int dev_err (struct device*,char*,char const*) ;
 int dev_info (struct device*,char*,char const*,int ) ;
 int fpga_mgr_buf_load (struct fpga_manager*,struct fpga_image_info*,int ,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,struct device*) ;

__attribute__((used)) static int fpga_mgr_firmware_load(struct fpga_manager *mgr,
      struct fpga_image_info *info,
      const char *image_name)
{
 struct device *dev = &mgr->dev;
 const struct firmware *fw;
 int ret;

 dev_info(dev, "writing %s to %s\n", image_name, mgr->name);

 mgr->state = FPGA_MGR_STATE_FIRMWARE_REQ;

 ret = request_firmware(&fw, image_name, dev);
 if (ret) {
  mgr->state = FPGA_MGR_STATE_FIRMWARE_REQ_ERR;
  dev_err(dev, "Error requesting firmware %s\n", image_name);
  return ret;
 }

 ret = fpga_mgr_buf_load(mgr, info, fw->data, fw->size);

 release_firmware(fw);

 return ret;
}
