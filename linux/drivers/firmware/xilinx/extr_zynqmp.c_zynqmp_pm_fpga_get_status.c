
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int PAYLOAD_ARG_CNT ;
 int PM_FPGA_GET_STATUS ;
 int zynqmp_pm_invoke_fn (int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int zynqmp_pm_fpga_get_status(u32 *value)
{
 u32 ret_payload[PAYLOAD_ARG_CNT];
 int ret;

 if (!value)
  return -EINVAL;

 ret = zynqmp_pm_invoke_fn(PM_FPGA_GET_STATUS, 0, 0, 0, 0, ret_payload);
 *value = ret_payload[1];

 return ret;
}
