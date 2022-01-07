
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc_fw {int __status; } ;
typedef enum intel_uc_fw_status { ____Placeholder_intel_uc_fw_status } intel_uc_fw_status ;



__attribute__((used)) static inline void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
          enum intel_uc_fw_status status)
{
 uc_fw->__status = status;
}
