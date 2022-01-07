
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u16 ;
struct flexcop_device {int (* write_ibi_reg ) (struct flexcop_device*,int ,TYPE_2__) ;} ;
struct TYPE_4__ {void* Group_mask; void* Group_PID; } ;
struct TYPE_5__ {TYPE_1__ pid_filter_30c_ext_ind_0_7; } ;
typedef TYPE_2__ flexcop_ibi_value ;


 int pid_filter_30c ;
 int stub1 (struct flexcop_device*,int ,TYPE_2__) ;

__attribute__((used)) static void flexcop_pid_group_filter(struct flexcop_device *fc,
  u16 pid, u16 mask)
{

 flexcop_ibi_value v30c;
 v30c.pid_filter_30c_ext_ind_0_7.Group_PID = pid;
 v30c.pid_filter_30c_ext_ind_0_7.Group_mask = mask;
 fc->write_ibi_reg(fc, pid_filter_30c, v30c);
}
