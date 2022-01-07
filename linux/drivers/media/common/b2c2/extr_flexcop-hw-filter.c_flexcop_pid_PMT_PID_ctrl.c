
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct flexcop_device {int dummy; } ;


 int PMT_PID ;
 int PMT_filter_sig ;
 int PMT_trans ;
 int pid_ctrl (int ,int ,int ,int ,int ) ;
 int pid_filter_304 ;

__attribute__((used)) static void flexcop_pid_PMT_PID_ctrl(struct flexcop_device *fc,
  u16 pid, int onoff)
{
 pid_ctrl(pid_filter_304, PMT_PID, PMT_filter_sig, PMT_trans, 0);
}
