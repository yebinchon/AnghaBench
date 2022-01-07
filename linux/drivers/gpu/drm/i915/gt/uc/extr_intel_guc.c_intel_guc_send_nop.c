
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc {int dummy; } ;


 int ENODEV ;
 int WARN (int,char*,int const) ;

int intel_guc_send_nop(struct intel_guc *guc, const u32 *action, u32 len,
         u32 *response_buf, u32 response_buf_size)
{
 WARN(1, "Unexpected send: action=%#x\n", *action);
 return -ENODEV;
}
