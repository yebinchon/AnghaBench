
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rvt_cq_exit () ;

__attribute__((used)) static void rvt_cleanup(void)
{
 rvt_cq_exit();
}
