
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x38_error_info {int dummy; } ;
struct mem_ctl_info {int mc_idx; } ;


 int edac_dbg (int,char*,int ) ;
 int x38_get_and_clear_error_info (struct mem_ctl_info*,struct x38_error_info*) ;
 int x38_process_error_info (struct mem_ctl_info*,struct x38_error_info*) ;

__attribute__((used)) static void x38_check(struct mem_ctl_info *mci)
{
 struct x38_error_info info;

 edac_dbg(1, "MC%d\n", mci->mc_idx);
 x38_get_and_clear_error_info(mci, &info);
 x38_process_error_info(mci, &info);
}
