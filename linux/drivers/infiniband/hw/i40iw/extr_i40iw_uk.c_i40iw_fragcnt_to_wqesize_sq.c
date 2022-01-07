
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_INVALID_FRAG_COUNT ;
 int I40IW_QP_WQE_MIN_SIZE ;

enum i40iw_status_code i40iw_fragcnt_to_wqesize_sq(u32 frag_cnt, u8 *wqe_size)
{
 switch (frag_cnt) {
 case 0:
 case 1:
  *wqe_size = I40IW_QP_WQE_MIN_SIZE;
  break;
 case 2:
 case 3:
  *wqe_size = 64;
  break;
 case 4:
 case 5:
  *wqe_size = 96;
  break;
 case 6:
 case 7:
  *wqe_size = 128;
  break;
 default:
  return I40IW_ERR_INVALID_FRAG_COUNT;
 }

 return 0;
}
