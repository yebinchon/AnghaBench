
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_device {int init_state; int sc_dev; int sd_type; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int HMC_OBJS_CREATED ;
 int I40IW_SD_TYPE_DIRECT ;
 int IW_CFG_FPM_QP_COUNT ;
 int i40iw_config_fpm_values (int *,int ) ;
 int i40iw_create_hmc_objs (struct i40iw_device*,int) ;

__attribute__((used)) static enum i40iw_status_code i40iw_hmc_setup(struct i40iw_device *iwdev)
{
 enum i40iw_status_code status;

 iwdev->sd_type = I40IW_SD_TYPE_DIRECT;
 status = i40iw_config_fpm_values(&iwdev->sc_dev, IW_CFG_FPM_QP_COUNT);
 if (status)
  goto exit;
 status = i40iw_create_hmc_objs(iwdev, 1);
 if (status)
  goto exit;
 iwdev->init_state = HMC_OBJS_CREATED;
exit:
 return status;
}
