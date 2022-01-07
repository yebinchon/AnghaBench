
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int mc_idx; } ;
struct i5400_error_info {int dummy; } ;


 int edac_dbg (int,char*,int ) ;
 int i5400_get_error_info (struct mem_ctl_info*,struct i5400_error_info*) ;
 int i5400_process_error_info (struct mem_ctl_info*,struct i5400_error_info*) ;

__attribute__((used)) static void i5400_check_error(struct mem_ctl_info *mci)
{
 struct i5400_error_info info;
 edac_dbg(4, "MC%d\n", mci->mc_idx);
 i5400_get_error_info(mci, &info);
 i5400_process_error_info(mci, &info);
}
