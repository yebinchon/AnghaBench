
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int PAYLOAD_ARG_CNT ;
 int PM_GET_CHIPID ;
 int zynqmp_pm_invoke_fn (int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int zynqmp_pm_get_chipid(u32 *idcode, u32 *version)
{
 u32 ret_payload[PAYLOAD_ARG_CNT];
 int ret;

 if (!idcode || !version)
  return -EINVAL;

 ret = zynqmp_pm_invoke_fn(PM_GET_CHIPID, 0, 0, 0, 0, ret_payload);
 *idcode = ret_payload[1];
 *version = ret_payload[2];

 return ret;
}
