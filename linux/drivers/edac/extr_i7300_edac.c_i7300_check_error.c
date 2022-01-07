
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;


 int i7300_process_error_global (struct mem_ctl_info*) ;
 int i7300_process_fbd_error (struct mem_ctl_info*) ;

__attribute__((used)) static void i7300_check_error(struct mem_ctl_info *mci)
{
 i7300_process_error_global(mci);
 i7300_process_fbd_error(mci);
}
