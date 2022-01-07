
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_dev {scalar_t__ back_dev; } ;
struct i40iw_dma_mem {int dummy; } ;
struct i40iw_device {int dummy; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_FPM_QUERY_BUF_ALIGNMENT_MASK ;
 int I40IW_QUERY_FPM_BUF_SIZE ;
 int i40iw_obj_aligned_mem (struct i40iw_device*,struct i40iw_dma_mem*,int ,int ) ;

enum i40iw_status_code i40iw_alloc_query_fpm_buf(struct i40iw_sc_dev *dev,
       struct i40iw_dma_mem *mem)
{
 enum i40iw_status_code status;
 struct i40iw_device *iwdev = (struct i40iw_device *)dev->back_dev;

 status = i40iw_obj_aligned_mem(iwdev, mem, I40IW_QUERY_FPM_BUF_SIZE,
           I40IW_FPM_QUERY_BUF_ALIGNMENT_MASK);
 return status;
}
