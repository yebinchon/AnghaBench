
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct flexcop_device {int skip_6_hw_pid_filter; int has_32_hw_pid_filter; int (* write_ibi_reg ) (struct flexcop_device*,int ,TYPE_2__) ;TYPE_2__ (* read_ibi_reg ) (struct flexcop_device*,int ) ;} ;
struct TYPE_5__ {int EMM_filter_4; scalar_t__ EMM_filter_6; } ;
struct TYPE_6__ {TYPE_1__ pid_filter_308; } ;
typedef TYPE_2__ flexcop_ibi_value ;


 int flexcop_null_filter_ctrl (struct flexcop_device*,int) ;
 int flexcop_pid_control (struct flexcop_device*,int,int,int ) ;
 int flexcop_pid_group_filter (struct flexcop_device*,int ,int) ;
 int flexcop_pid_group_filter_ctrl (struct flexcop_device*,int ) ;
 int pid_filter_308 ;
 TYPE_2__ stub1 (struct flexcop_device*,int ) ;
 int stub2 (struct flexcop_device*,int ,TYPE_2__) ;

void flexcop_hw_filter_init(struct flexcop_device *fc)
{
 int i;
 flexcop_ibi_value v;
 int max_pid_filter = 6;

 max_pid_filter -= 6 * fc->skip_6_hw_pid_filter;
 max_pid_filter += 32 * fc->has_32_hw_pid_filter;

 for (i = 0; i < max_pid_filter; i++)
  flexcop_pid_control(fc, i, 0x1fff, 0);

 flexcop_pid_group_filter(fc, 0, 0x1fe0);
 flexcop_pid_group_filter_ctrl(fc, 0);

 v = fc->read_ibi_reg(fc, pid_filter_308);
 v.pid_filter_308.EMM_filter_4 = 1;
 v.pid_filter_308.EMM_filter_6 = 0;
 fc->write_ibi_reg(fc, pid_filter_308, v);

 flexcop_null_filter_ctrl(fc, 1);
}
