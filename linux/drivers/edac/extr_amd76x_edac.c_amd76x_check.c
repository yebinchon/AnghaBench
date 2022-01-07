
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;
struct amd76x_error_info {int dummy; } ;


 int amd76x_get_error_info (struct mem_ctl_info*,struct amd76x_error_info*) ;
 int amd76x_process_error_info (struct mem_ctl_info*,struct amd76x_error_info*,int) ;
 int edac_dbg (int,char*) ;

__attribute__((used)) static void amd76x_check(struct mem_ctl_info *mci)
{
 struct amd76x_error_info info;
 edac_dbg(3, "\n");
 amd76x_get_error_info(mci, &info);
 amd76x_process_error_info(mci, &info, 1);
}
