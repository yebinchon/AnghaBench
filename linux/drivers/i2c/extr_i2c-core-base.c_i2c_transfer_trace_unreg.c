
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i2c_trace_msg_key ;
 int static_branch_dec (int *) ;

void i2c_transfer_trace_unreg(void)
{
 static_branch_dec(&i2c_trace_msg_key);
}
