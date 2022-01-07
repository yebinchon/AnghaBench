
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int CMPL_DME_STATUS_MASK ;
 int CMPL_DME_STATUS_SHIFT ;
 int CMPL_RM_STATUS_MASK ;
 int CMPL_RM_STATUS_SHIFT ;
 int DESC_DEC (int ,int ,int ) ;
 int DME_STATUS_ERROR_MASK ;
 int EIO ;
 int ETIMEDOUT ;
 int RM_STATUS_CODE_AE_TIMEOUT ;
 int RM_STATUS_CODE_MASK ;

__attribute__((used)) static int flexrm_cmpl_desc_to_error(u64 cmpl_desc)
{
 u32 status;

 status = DESC_DEC(cmpl_desc, CMPL_DME_STATUS_SHIFT,
     CMPL_DME_STATUS_MASK);
 if (status & DME_STATUS_ERROR_MASK)
  return -EIO;

 status = DESC_DEC(cmpl_desc, CMPL_RM_STATUS_SHIFT,
     CMPL_RM_STATUS_MASK);
 status &= RM_STATUS_CODE_MASK;
 if (status == RM_STATUS_CODE_AE_TIMEOUT)
  return -ETIMEDOUT;

 return 0;
}
