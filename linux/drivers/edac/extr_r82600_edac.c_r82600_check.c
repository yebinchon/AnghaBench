
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r82600_error_info {int dummy; } ;
struct mem_ctl_info {int mc_idx; } ;


 int edac_dbg (int,char*,int ) ;
 int r82600_get_error_info (struct mem_ctl_info*,struct r82600_error_info*) ;
 int r82600_process_error_info (struct mem_ctl_info*,struct r82600_error_info*,int) ;

__attribute__((used)) static void r82600_check(struct mem_ctl_info *mci)
{
 struct r82600_error_info info;

 edac_dbg(1, "MC%d\n", mci->mc_idx);
 r82600_get_error_info(mci, &info);
 r82600_process_error_info(mci, &info, 1);
}
