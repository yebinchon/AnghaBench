
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_INVALID_FRAG_COUNT ;

enum i40iw_status_code i40iw_fragcnt_to_wqesize_rq(u32 frag_cnt, u8 *wqe_size)
{
 switch (frag_cnt) {
 case 0:
 case 1:
  *wqe_size = 32;
  break;
 case 2:
 case 3:
  *wqe_size = 64;
  break;
 case 4:
 case 5:
 case 6:
 case 7:
  *wqe_size = 128;
  break;
 default:
  return I40IW_ERR_INVALID_FRAG_COUNT;
 }

 return 0;
}
