
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int mc_idx; } ;
struct i3000_error_info {int dummy; } ;


 int edac_dbg (int,char*,int ) ;
 int i3000_get_error_info (struct mem_ctl_info*,struct i3000_error_info*) ;
 int i3000_process_error_info (struct mem_ctl_info*,struct i3000_error_info*,int) ;

__attribute__((used)) static void i3000_check(struct mem_ctl_info *mci)
{
 struct i3000_error_info info;

 edac_dbg(1, "MC%d\n", mci->mc_idx);
 i3000_get_error_info(mci, &info);
 i3000_process_error_info(mci, &info, 1);
}
