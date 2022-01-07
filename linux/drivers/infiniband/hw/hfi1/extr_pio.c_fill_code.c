
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CR_CREDIT_RETURN_DUE_TO_ERR_SMASK ;
 int CR_CREDIT_RETURN_DUE_TO_FORCE_SMASK ;
 int CR_CREDIT_RETURN_DUE_TO_PBC_SMASK ;
 int CR_CREDIT_RETURN_DUE_TO_THRESHOLD_SMASK ;
 int CR_STATUS_SMASK ;
 int PRC_FILL_ERR ;
 int PRC_PBC ;
 int PRC_SC_DISABLE ;
 int PRC_STATUS_ERR ;
 int PRC_THRESHOLD ;

__attribute__((used)) static inline int fill_code(u64 hw_free)
{
 int code = 0;

 if (hw_free & CR_STATUS_SMASK)
  code |= PRC_STATUS_ERR;
 if (hw_free & CR_CREDIT_RETURN_DUE_TO_PBC_SMASK)
  code |= PRC_PBC;
 if (hw_free & CR_CREDIT_RETURN_DUE_TO_THRESHOLD_SMASK)
  code |= PRC_THRESHOLD;
 if (hw_free & CR_CREDIT_RETURN_DUE_TO_ERR_SMASK)
  code |= PRC_FILL_ERR;
 if (hw_free & CR_CREDIT_RETURN_DUE_TO_FORCE_SMASK)
  code |= PRC_SC_DISABLE;
 return code;
}
