
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_cpu_pid_param {int dummy; } ;
struct wf_cpu_pid_state {int first; struct wf_cpu_pid_param param; } ;


 int memset (struct wf_cpu_pid_state*,int ,int) ;

void wf_cpu_pid_init(struct wf_cpu_pid_state *st,
       struct wf_cpu_pid_param *param)
{
 memset(st, 0, sizeof(struct wf_cpu_pid_state));
 st->param = *param;
 st->first = 1;
}
