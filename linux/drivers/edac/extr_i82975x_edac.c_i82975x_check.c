
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int mc_idx; } ;
struct i82975x_error_info {int dummy; } ;


 int edac_dbg (int,char*,int ) ;
 int i82975x_get_error_info (struct mem_ctl_info*,struct i82975x_error_info*) ;
 int i82975x_process_error_info (struct mem_ctl_info*,struct i82975x_error_info*,int) ;

__attribute__((used)) static void i82975x_check(struct mem_ctl_info *mci)
{
 struct i82975x_error_info info;

 edac_dbg(1, "MC%d\n", mci->mc_idx);
 i82975x_get_error_info(mci, &info);
 i82975x_process_error_info(mci, &info, 1);
}
