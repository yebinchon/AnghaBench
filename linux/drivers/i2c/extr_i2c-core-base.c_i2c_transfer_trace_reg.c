
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i2c_trace_msg_key ;
 int static_branch_inc (int *) ;

int i2c_transfer_trace_reg(void)
{
 static_branch_inc(&i2c_trace_msg_key);
 return 0;
}
