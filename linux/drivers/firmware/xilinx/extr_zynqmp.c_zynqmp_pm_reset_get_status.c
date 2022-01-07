
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum zynqmp_pm_reset { ____Placeholder_zynqmp_pm_reset } zynqmp_pm_reset ;


 int EINVAL ;
 int PAYLOAD_ARG_CNT ;
 int PM_RESET_GET_STATUS ;
 int zynqmp_pm_invoke_fn (int ,int const,int ,int ,int ,int *) ;

__attribute__((used)) static int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset,
          u32 *status)
{
 u32 ret_payload[PAYLOAD_ARG_CNT];
 int ret;

 if (!status)
  return -EINVAL;

 ret = zynqmp_pm_invoke_fn(PM_RESET_GET_STATUS, reset, 0,
      0, 0, ret_payload);
 *status = ret_payload[1];

 return ret;
}
