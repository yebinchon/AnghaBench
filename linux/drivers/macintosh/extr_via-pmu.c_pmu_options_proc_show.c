
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int PMAC_FTR_SLEEP_STATE ;
 scalar_t__ PMU_KEYLARGO_BASED ;
 int option_lid_wakeup ;
 int option_server_mode ;
 scalar_t__ pmac_call_feature (int ,int *,int ,int) ;
 scalar_t__ pmu_kind ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int pmu_options_proc_show(struct seq_file *m, void *v)
{





 if (pmu_kind == PMU_KEYLARGO_BASED)
  seq_printf(m, "server_mode=%d\n", option_server_mode);

 return 0;
}
