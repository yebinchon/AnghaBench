
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int PM_IOCTL ;
 int zynqmp_is_valid_ioctl (int ) ;
 int zynqmp_pm_invoke_fn (int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int zynqmp_pm_ioctl(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2,
      u32 *out)
{
 if (!zynqmp_is_valid_ioctl(ioctl_id))
  return -EINVAL;

 return zynqmp_pm_invoke_fn(PM_IOCTL, node_id, ioctl_id,
       arg1, arg2, out);
}
