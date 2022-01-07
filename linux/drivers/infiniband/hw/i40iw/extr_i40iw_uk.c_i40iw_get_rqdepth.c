
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_INVALID_SIZE ;
 int I40IW_QP_SW_MAX_RQ_QUANTAS ;
 int I40IW_QP_SW_MIN_WQSIZE ;
 scalar_t__ I40IW_RQ_RSVD ;
 int roundup_pow_of_two (scalar_t__) ;

enum i40iw_status_code i40iw_get_rqdepth(u32 rq_size, u8 shift, u32 *rqdepth)
{
 *rqdepth = roundup_pow_of_two((rq_size << shift) + I40IW_RQ_RSVD);

 if (*rqdepth < (I40IW_QP_SW_MIN_WQSIZE << shift))
  *rqdepth = I40IW_QP_SW_MIN_WQSIZE << shift;
 else if (*rqdepth > I40IW_QP_SW_MAX_RQ_QUANTAS)
  return I40IW_ERR_INVALID_SIZE;

 return 0;
}
