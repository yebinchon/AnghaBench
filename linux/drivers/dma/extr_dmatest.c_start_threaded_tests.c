
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmatest_info {int did_init; } ;


 int run_pending_tests (struct dmatest_info*) ;

__attribute__((used)) static void start_threaded_tests(struct dmatest_info *info)
{



 if (!info->did_init)
  return;

 run_pending_tests(info);
}
