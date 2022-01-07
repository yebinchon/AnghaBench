
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;
struct dmatest_info {int lock; } ;


 scalar_t__ dmatest_run ;
 scalar_t__ is_threaded_test_pending (struct dmatest_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int param_set_bool (char const*,struct kernel_param const*) ;
 int pr_info (char*) ;
 int start_threaded_tests (struct dmatest_info*) ;
 int stop_threaded_test (struct dmatest_info*) ;
 struct dmatest_info test_info ;

__attribute__((used)) static int dmatest_run_set(const char *val, const struct kernel_param *kp)
{
 struct dmatest_info *info = &test_info;
 int ret;

 mutex_lock(&info->lock);
 ret = param_set_bool(val, kp);
 if (ret) {
  mutex_unlock(&info->lock);
  return ret;
 } else if (dmatest_run) {
  if (is_threaded_test_pending(info))
   start_threaded_tests(info);
  else
   pr_info("Could not start test, no channels configured\n");
 } else {
  stop_threaded_test(info);
 }

 mutex_unlock(&info->lock);

 return ret;
}
