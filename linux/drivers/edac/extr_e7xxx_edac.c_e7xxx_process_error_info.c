
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;
struct e7xxx_error_info {int dram_ferr; int dram_nerr; } ;


 int process_ce (struct mem_ctl_info*,struct e7xxx_error_info*) ;
 int process_ce_no_info (struct mem_ctl_info*) ;
 int process_ue (struct mem_ctl_info*,struct e7xxx_error_info*) ;
 int process_ue_no_info (struct mem_ctl_info*) ;

__attribute__((used)) static int e7xxx_process_error_info(struct mem_ctl_info *mci,
    struct e7xxx_error_info *info,
    int handle_errors)
{
 int error_found;

 error_found = 0;


 if (info->dram_ferr & 1) {
  error_found = 1;

  if (handle_errors)
   process_ce(mci, info);
 }

 if (info->dram_ferr & 2) {
  error_found = 1;

  if (handle_errors)
   process_ue(mci, info);
 }

 if (info->dram_nerr & 1) {
  error_found = 1;

  if (handle_errors) {
   if (info->dram_ferr & 1)
    process_ce_no_info(mci);
   else
    process_ce(mci, info);
  }
 }

 if (info->dram_nerr & 2) {
  error_found = 1;

  if (handle_errors) {
   if (info->dram_ferr & 2)
    process_ue_no_info(mci);
   else
    process_ue(mci, info);
  }
 }

 return error_found;
}
