
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct panfrost_device {int dummy; } ;




 int AS_FAULTSTATUS_ACCESS_TYPE_MASK ;


 int HW_FEATURE_AARCH64_MMU ;
 int WARN_ON (int) ;
 int panfrost_has_hw_feature (struct panfrost_device*,int ) ;

__attribute__((used)) static const char *access_type_name(struct panfrost_device *pfdev,
  u32 fault_status)
{
 switch (fault_status & AS_FAULTSTATUS_ACCESS_TYPE_MASK) {
 case 131:
  if (panfrost_has_hw_feature(pfdev, HW_FEATURE_AARCH64_MMU))
   return "ATOMIC";
  else
   return "UNKNOWN";
 case 129:
  return "READ";
 case 128:
  return "WRITE";
 case 130:
  return "EXECUTE";
 default:
  WARN_ON(1);
  return ((void*)0);
 }
}
