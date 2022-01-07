
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wf_pid_param {int max; int min; } ;
struct device_node {int dummy; } ;
typedef int s32 ;


 int backside_fan ;
 int backside_pid ;
 int backside_tick ;
 struct wf_pid_param backside_u3_param ;
 struct wf_pid_param backside_u3h_param ;
 int max (int ,int ) ;
 int min (int ,int ) ;
 struct device_node* of_find_node_by_path (char*) ;
 int* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int pr_info (char*) ;
 int wf_control_get_max (int ) ;
 int wf_control_get_min (int ) ;
 int wf_pid_init (int *,struct wf_pid_param*) ;

__attribute__((used)) static void backside_setup_pid(void)
{

 s32 fmin = wf_control_get_min(backside_fan);
 s32 fmax = wf_control_get_max(backside_fan);
 struct wf_pid_param param;
 struct device_node *u3;
 int u3h = 1;

 u3 = of_find_node_by_path("/u3@0,f8000000");
 if (u3 != ((void*)0)) {
  const u32 *vers = of_get_property(u3, "device-rev", ((void*)0));
  if (vers)
   if (((*vers) & 0x3f) < 0x34)
    u3h = 0;
  of_node_put(u3);
 }

 param = u3h ? backside_u3h_param : backside_u3_param;

 param.min = max(param.min, fmin);
 param.max = min(param.max, fmax);
 wf_pid_init(&backside_pid, &param);
 backside_tick = 1;

 pr_info("wf_pm72: Backside control loop started.\n");
}
