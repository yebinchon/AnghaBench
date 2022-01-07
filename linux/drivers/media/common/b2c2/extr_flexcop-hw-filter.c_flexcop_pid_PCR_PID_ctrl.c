
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct flexcop_device {int dummy; } ;


 int PCR_PID ;
 int PCR_filter_sig ;
 int PCR_trans ;
 int pid_ctrl (int ,int ,int ,int ,int ) ;
 int pid_filter_304 ;

__attribute__((used)) static void flexcop_pid_PCR_PID_ctrl(struct flexcop_device *fc,
  u16 pid, int onoff)
{
 pid_ctrl(pid_filter_304, PCR_PID, PCR_filter_sig, PCR_trans, 0);
}
