
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ta_ras_error_type { ____Placeholder_ta_ras_error_type } ta_ras_error_type ;
typedef enum amdgpu_ras_error_type { ____Placeholder_amdgpu_ras_error_type } amdgpu_ras_error_type ;







 int TA_RAS_ERROR__MULTI_UNCORRECTABLE ;
 int TA_RAS_ERROR__NONE ;
 int TA_RAS_ERROR__PARITY ;
 int TA_RAS_ERROR__POISON ;
 int TA_RAS_ERROR__SINGLE_CORRECTABLE ;
 int WARN_ONCE (int,char*,int) ;

__attribute__((used)) static inline enum ta_ras_error_type
amdgpu_ras_error_to_ta(enum amdgpu_ras_error_type error) {
 switch (error) {
 case 131:
  return TA_RAS_ERROR__NONE;
 case 130:
  return TA_RAS_ERROR__PARITY;
 case 128:
  return TA_RAS_ERROR__SINGLE_CORRECTABLE;
 case 132:
  return TA_RAS_ERROR__MULTI_UNCORRECTABLE;
 case 129:
  return TA_RAS_ERROR__POISON;
 default:
  WARN_ONCE(1, "RAS ERROR: unexpected error type %d\n", error);
  return TA_RAS_ERROR__NONE;
 }
}
