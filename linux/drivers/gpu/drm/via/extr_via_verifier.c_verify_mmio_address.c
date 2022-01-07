
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DRM_ERROR (char*) ;

__attribute__((used)) static __inline__ int verify_mmio_address(uint32_t address)
{
 if ((address > 0x3FF) && (address < 0xC00)) {
  DRM_ERROR("Invalid VIDEO DMA command. "
     "Attempt to access 3D- or command burst area.\n");
  return 1;
 } else if ((address > 0xCFF) && (address < 0x1300)) {
  DRM_ERROR("Invalid VIDEO DMA command. "
     "Attempt to access PCI DMA area.\n");
  return 1;
 } else if (address > 0x13FF) {
  DRM_ERROR("Invalid VIDEO DMA command. "
     "Attempt to access VGA registers.\n");
  return 1;
 }
 return 0;
}
