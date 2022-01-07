
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *iommu_domain_type_str(unsigned int t)
{
 switch (t) {
 case 131:
  return "Blocked";
 case 129:
  return "Passthrough";
 case 128:
  return "Unmanaged";
 case 130:
  return "Translated";
 default:
  return "Unknown";
 }
}
