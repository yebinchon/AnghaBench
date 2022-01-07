
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int AMD_IS_VALID_VBIOS (int*) ;
 int DRM_DEBUG (char*) ;
 int DRM_INFO (char*,...) ;
 int memcmp (int*,char*,int) ;

__attribute__((used)) static bool check_atom_bios(uint8_t *bios, size_t size)
{
 uint16_t tmp, bios_header_start;

 if (!bios || size < 0x49) {
  DRM_INFO("vbios mem is null or mem size is wrong\n");
  return 0;
 }

 if (!AMD_IS_VALID_VBIOS(bios)) {
  DRM_INFO("BIOS signature incorrect %x %x\n", bios[0], bios[1]);
  return 0;
 }

 bios_header_start = bios[0x48] | (bios[0x49] << 8);
 if (!bios_header_start) {
  DRM_INFO("Can't locate bios header\n");
  return 0;
 }

 tmp = bios_header_start + 4;
 if (size < tmp) {
  DRM_INFO("BIOS header is broken\n");
  return 0;
 }

 if (!memcmp(bios + tmp, "ATOM", 4) ||
     !memcmp(bios + tmp, "MOTA", 4)) {
  DRM_DEBUG("ATOMBIOS detected\n");
  return 1;
 }

 return 0;
}
