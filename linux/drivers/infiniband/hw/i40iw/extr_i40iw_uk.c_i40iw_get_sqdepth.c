
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_INVALID_SIZE ;
 int I40IW_QP_SW_MAX_SQ_QUANTAS ;
 int I40IW_QP_SW_MIN_WQSIZE ;
 scalar_t__ I40IW_SQ_RSVD ;
 int roundup_pow_of_two (scalar_t__) ;

enum i40iw_status_code i40iw_get_sqdepth(u32 sq_size, u8 shift, u32 *sqdepth)
{
 *sqdepth = roundup_pow_of_two((sq_size << shift) + I40IW_SQ_RSVD);

 if (*sqdepth < (I40IW_QP_SW_MIN_WQSIZE << shift))
  *sqdepth = I40IW_QP_SW_MIN_WQSIZE << shift;
 else if (*sqdepth > I40IW_QP_SW_MAX_SQ_QUANTAS)
  return I40IW_ERR_INVALID_SIZE;

 return 0;
}
