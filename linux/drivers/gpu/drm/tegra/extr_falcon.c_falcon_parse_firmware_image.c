
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct falcon_fw_os_header_v1 {int data_size; int data_offset; int code_size; int code_offset; } ;
struct falcon_fw_bin_header_v1 {scalar_t__ magic; int version; scalar_t__ size; int os_header_offset; int os_data_offset; int os_size; } ;
struct TYPE_7__ {int size; int offset; } ;
struct TYPE_6__ {int size; int offset; } ;
struct TYPE_5__ {int offset; int size; } ;
struct TYPE_8__ {scalar_t__ size; TYPE_3__ data; TYPE_2__ code; TYPE_1__ bin_data; struct falcon_fw_os_header_v1* vaddr; } ;
struct falcon {TYPE_4__ firmware; int dev; } ;


 int EINVAL ;
 scalar_t__ PCI_VENDOR_ID_NVIDIA ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int falcon_parse_firmware_image(struct falcon *falcon)
{
 struct falcon_fw_bin_header_v1 *bin = (void *)falcon->firmware.vaddr;
 struct falcon_fw_os_header_v1 *os;


 if (bin->magic != PCI_VENDOR_ID_NVIDIA) {
  dev_err(falcon->dev, "incorrect firmware magic\n");
  return -EINVAL;
 }


 if (bin->version != 1) {
  dev_err(falcon->dev, "unsupported firmware version\n");
  return -EINVAL;
 }


 if (bin->size > falcon->firmware.size) {
  dev_err(falcon->dev, "firmware image size inconsistency\n");
  return -EINVAL;
 }

 os = falcon->firmware.vaddr + bin->os_header_offset;

 falcon->firmware.bin_data.size = bin->os_size;
 falcon->firmware.bin_data.offset = bin->os_data_offset;
 falcon->firmware.code.offset = os->code_offset;
 falcon->firmware.code.size = os->code_size;
 falcon->firmware.data.offset = os->data_offset;
 falcon->firmware.data.size = os->data_size;

 return 0;
}
