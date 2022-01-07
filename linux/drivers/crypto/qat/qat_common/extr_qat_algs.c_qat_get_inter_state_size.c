
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum icp_qat_hw_auth_algo { ____Placeholder_icp_qat_hw_auth_algo } icp_qat_hw_auth_algo ;


 int EFAULT ;



 int ICP_QAT_HW_SHA1_STATE1_SZ ;
 int ICP_QAT_HW_SHA256_STATE1_SZ ;
 int ICP_QAT_HW_SHA512_STATE1_SZ ;

__attribute__((used)) static int qat_get_inter_state_size(enum icp_qat_hw_auth_algo qat_hash_alg)
{
 switch (qat_hash_alg) {
 case 130:
  return ICP_QAT_HW_SHA1_STATE1_SZ;
 case 129:
  return ICP_QAT_HW_SHA256_STATE1_SZ;
 case 128:
  return ICP_QAT_HW_SHA512_STATE1_SZ;
 default:
  return -EFAULT;
 };
 return -EFAULT;
}
