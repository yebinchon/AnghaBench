
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_SUB_JOB_SIZE_KB ;
 int MAX_SUB_JOB_SIZE_KB ;
 unsigned int __dm_get_module_param (int *,int ,int ) ;
 int kcopyd_subjob_size_kb ;

__attribute__((used)) static unsigned dm_get_kcopyd_subjob_size(void)
{
 unsigned sub_job_size_kb;

 sub_job_size_kb = __dm_get_module_param(&kcopyd_subjob_size_kb,
      DEFAULT_SUB_JOB_SIZE_KB,
      MAX_SUB_JOB_SIZE_KB);

 return sub_job_size_kb << 1;
}
