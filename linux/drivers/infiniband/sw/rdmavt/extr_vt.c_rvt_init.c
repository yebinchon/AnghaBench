
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_err (char*) ;
 int rvt_driver_cq_init () ;

__attribute__((used)) static int rvt_init(void)
{
 int ret = rvt_driver_cq_init();

 if (ret)
  pr_err("Error in driver CQ init.\n");

 return ret;
}
