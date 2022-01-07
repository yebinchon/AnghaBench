
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_dev {int dummy; } ;


 int EFAULT ;
 scalar_t__ adf_enable_msi (struct adf_accel_dev*) ;
 scalar_t__ adf_request_msi_irq (struct adf_accel_dev*) ;
 scalar_t__ adf_setup_bh (struct adf_accel_dev*) ;
 scalar_t__ adf_setup_pf2vf_bh (struct adf_accel_dev*) ;
 int adf_vf_isr_resource_free (struct adf_accel_dev*) ;

int adf_vf_isr_resource_alloc(struct adf_accel_dev *accel_dev)
{
 if (adf_enable_msi(accel_dev))
  goto err_out;

 if (adf_setup_pf2vf_bh(accel_dev))
  goto err_out;

 if (adf_setup_bh(accel_dev))
  goto err_out;

 if (adf_request_msi_irq(accel_dev))
  goto err_out;

 return 0;
err_out:
 adf_vf_isr_resource_free(accel_dev);
 return -EFAULT;
}
