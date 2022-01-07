
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_accel_dev {int dummy; } ;


 int adf_enable_pf2vf_interrupts (struct adf_accel_dev*) ;
 int adf_vf2pf_request_version (struct adf_accel_dev*) ;

int adf_enable_vf2pf_comms(struct adf_accel_dev *accel_dev)
{
 adf_enable_pf2vf_interrupts(accel_dev);
 return adf_vf2pf_request_version(accel_dev);
}
