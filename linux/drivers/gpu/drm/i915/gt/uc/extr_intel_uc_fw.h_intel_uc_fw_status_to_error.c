
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intel_uc_fw_status { ____Placeholder_intel_uc_fw_status } intel_uc_fw_status ;


 int EACCES ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOENT ;
 int ENOEXEC ;
 int EPERM ;
 int ESTALE ;
__attribute__((used)) static inline int intel_uc_fw_status_to_error(enum intel_uc_fw_status status)
{
 switch (status) {
 case 132:
  return -ENODEV;
 case 128:
  return -EACCES;
 case 136:
  return -EPERM;
 case 133:
  return -ENOENT;
 case 135:
  return -ENOEXEC;
 case 134:
  return -EIO;
 case 130:
  return -ESTALE;
 case 137:
 case 129:
 case 131:
  return 0;
 }
 return -EINVAL;
}
