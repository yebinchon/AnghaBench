
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ header_version_major; scalar_t__ header_version_minor; } ;
union amdgpu_firmware_header {TYPE_1__ common; } ;
typedef scalar_t__ uint16_t ;



bool amdgpu_ucode_hdr_version(union amdgpu_firmware_header *hdr,
    uint16_t hdr_major, uint16_t hdr_minor)
{
 if ((hdr->common.header_version_major == hdr_major) &&
  (hdr->common.header_version_minor == hdr_minor))
  return 0;
 return 1;
}
