
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int mc_idx; } ;
struct ie31200_error_info {int dummy; } ;


 int edac_dbg (int,char*,int ) ;
 int ie31200_get_and_clear_error_info (struct mem_ctl_info*,struct ie31200_error_info*) ;
 int ie31200_process_error_info (struct mem_ctl_info*,struct ie31200_error_info*) ;

__attribute__((used)) static void ie31200_check(struct mem_ctl_info *mci)
{
 struct ie31200_error_info info;

 edac_dbg(1, "MC%d\n", mci->mc_idx);
 ie31200_get_and_clear_error_info(mci, &info);
 ie31200_process_error_info(mci, &info);
}
