
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct common_firmware_header {int crc32; int ucode_array_offset_bytes; int ucode_size_bytes; int ucode_version; int ip_version_minor; int ip_version_major; int header_version_minor; int header_version_major; int header_size_bytes; int size_bytes; } ;


 int DRM_DEBUG (char*,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void radeon_ucode_print_common_hdr(const struct common_firmware_header *hdr)
{
 DRM_DEBUG("size_bytes: %u\n", le32_to_cpu(hdr->size_bytes));
 DRM_DEBUG("header_size_bytes: %u\n", le32_to_cpu(hdr->header_size_bytes));
 DRM_DEBUG("header_version_major: %u\n", le16_to_cpu(hdr->header_version_major));
 DRM_DEBUG("header_version_minor: %u\n", le16_to_cpu(hdr->header_version_minor));
 DRM_DEBUG("ip_version_major: %u\n", le16_to_cpu(hdr->ip_version_major));
 DRM_DEBUG("ip_version_minor: %u\n", le16_to_cpu(hdr->ip_version_minor));
 DRM_DEBUG("ucode_version: 0x%08x\n", le32_to_cpu(hdr->ucode_version));
 DRM_DEBUG("ucode_size_bytes: %u\n", le32_to_cpu(hdr->ucode_size_bytes));
 DRM_DEBUG("ucode_array_offset_bytes: %u\n",
    le32_to_cpu(hdr->ucode_array_offset_bytes));
 DRM_DEBUG("crc32: 0x%08x\n", le32_to_cpu(hdr->crc32));
}
