
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct common_firmware_header {int size_bytes; } ;


 int EINVAL ;
 scalar_t__ le32_to_cpu (int ) ;

int radeon_ucode_validate(const struct firmware *fw)
{
 const struct common_firmware_header *hdr =
  (const struct common_firmware_header *)fw->data;

 if (fw->size == le32_to_cpu(hdr->size_bytes))
  return 0;

 return -EINVAL;
}
