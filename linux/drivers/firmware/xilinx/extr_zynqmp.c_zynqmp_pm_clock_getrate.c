
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int PAYLOAD_ARG_CNT ;
 int PM_CLOCK_GETRATE ;
 int zynqmp_pm_invoke_fn (int ,int,int ,int ,int ,int*) ;

__attribute__((used)) static int zynqmp_pm_clock_getrate(u32 clock_id, u64 *rate)
{
 u32 ret_payload[PAYLOAD_ARG_CNT];
 int ret;

 ret = zynqmp_pm_invoke_fn(PM_CLOCK_GETRATE, clock_id, 0,
      0, 0, ret_payload);
 *rate = ((u64)ret_payload[2] << 32) | ret_payload[1];

 return ret;
}
