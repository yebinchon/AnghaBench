
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int EINVAL ;
 int PAYLOAD_ARG_CNT ;
 int PM_GET_API_VERSION ;
 scalar_t__ pm_api_version ;
 int zynqmp_pm_invoke_fn (int ,int ,int ,int ,int ,scalar_t__*) ;

__attribute__((used)) static int zynqmp_pm_get_api_version(u32 *version)
{
 u32 ret_payload[PAYLOAD_ARG_CNT];
 int ret;

 if (!version)
  return -EINVAL;


 if (pm_api_version > 0) {
  *version = pm_api_version;
  return 0;
 }
 ret = zynqmp_pm_invoke_fn(PM_GET_API_VERSION, 0, 0, 0, 0, ret_payload);
 *version = ret_payload[1];

 return ret;
}
