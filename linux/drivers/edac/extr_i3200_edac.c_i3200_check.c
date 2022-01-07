
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int mc_idx; } ;
struct i3200_error_info {int dummy; } ;


 int edac_dbg (int,char*,int ) ;
 int i3200_get_and_clear_error_info (struct mem_ctl_info*,struct i3200_error_info*) ;
 int i3200_process_error_info (struct mem_ctl_info*,struct i3200_error_info*) ;

__attribute__((used)) static void i3200_check(struct mem_ctl_info *mci)
{
 struct i3200_error_info info;

 edac_dbg(1, "MC%d\n", mci->mc_idx);
 i3200_get_and_clear_error_info(mci, &info);
 i3200_process_error_info(mci, &info);
}
