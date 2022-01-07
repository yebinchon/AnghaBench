
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short INTEL_PCH_P2X_DEVICE_ID_TYPE ;
 unsigned short INTEL_PCH_P3X_DEVICE_ID_TYPE ;
 unsigned short INTEL_PCH_QEMU_DEVICE_ID_TYPE ;
 unsigned short PCI_SUBDEVICE_ID_QEMU ;
 unsigned short PCI_SUBVENDOR_ID_REDHAT_QUMRANET ;

__attribute__((used)) static bool intel_is_virt_pch(unsigned short id,
         unsigned short svendor, unsigned short sdevice)
{
 return (id == INTEL_PCH_P2X_DEVICE_ID_TYPE ||
  id == INTEL_PCH_P3X_DEVICE_ID_TYPE ||
  (id == INTEL_PCH_QEMU_DEVICE_ID_TYPE &&
   svendor == PCI_SUBVENDOR_ID_REDHAT_QUMRANET &&
   sdevice == PCI_SUBDEVICE_ID_QEMU));
}
