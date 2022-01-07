
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_device {int dummy; } ;
typedef int flexcop_wan_speed_t ;


 int flexcop_set_ibi_value (int ,int ,int ) ;
 int wan_ctrl_reg_71c ;
 int wan_speed_sig ;

void flexcop_wan_set_speed(struct flexcop_device *fc, flexcop_wan_speed_t s)
{
 flexcop_set_ibi_value(wan_ctrl_reg_71c,wan_speed_sig,s);
}
