
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;
struct dmatest_params {scalar_t__ iterations; } ;
struct dmatest_info {struct dmatest_params params; } ;


 int is_threaded_test_run (struct dmatest_info*) ;
 int param_get_bool (char*,struct kernel_param const*) ;
 struct dmatest_info test_info ;
 int thread_wait ;
 int wait ;
 int wait_event (int ,int) ;

__attribute__((used)) static int dmatest_wait_get(char *val, const struct kernel_param *kp)
{
 struct dmatest_info *info = &test_info;
 struct dmatest_params *params = &info->params;

 if (params->iterations)
  wait_event(thread_wait, !is_threaded_test_run(info));
 wait = 1;
 return param_get_bool(val, kp);
}
