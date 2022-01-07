
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_INVALID_INLINE_DATA_SIZE ;
 int I40IW_MAX_INLINE_DATA_SIZE ;
 int I40IW_QP_WQE_MIN_SIZE ;

enum i40iw_status_code i40iw_inline_data_size_to_wqesize(u32 data_size,
        u8 *wqe_size)
{
 if (data_size > I40IW_MAX_INLINE_DATA_SIZE)
  return I40IW_ERR_INVALID_INLINE_DATA_SIZE;

 if (data_size <= 16)
  *wqe_size = I40IW_QP_WQE_MIN_SIZE;
 else
  *wqe_size = 64;

 return 0;
}
