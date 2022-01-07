
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;
struct dmatest_info {int lock; } ;


 int dmatest_run ;
 int is_threaded_test_pending (struct dmatest_info*) ;
 scalar_t__ is_threaded_test_run (struct dmatest_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int param_get_bool (char*,struct kernel_param const*) ;
 int stop_threaded_test (struct dmatest_info*) ;
 struct dmatest_info test_info ;

__attribute__((used)) static int dmatest_run_get(char *val, const struct kernel_param *kp)
{
 struct dmatest_info *info = &test_info;

 mutex_lock(&info->lock);
 if (is_threaded_test_run(info)) {
  dmatest_run = 1;
 } else {
  if (!is_threaded_test_pending(info))
   stop_threaded_test(info);
  dmatest_run = 0;
 }
 mutex_unlock(&info->lock);

 return param_get_bool(val, kp);
}
