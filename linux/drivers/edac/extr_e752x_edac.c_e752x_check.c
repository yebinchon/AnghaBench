
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;
struct e752x_error_info {int dummy; } ;


 int e752x_get_error_info (struct mem_ctl_info*,struct e752x_error_info*) ;
 int e752x_process_error_info (struct mem_ctl_info*,struct e752x_error_info*,int) ;
 int edac_dbg (int,char*) ;

__attribute__((used)) static void e752x_check(struct mem_ctl_info *mci)
{
 struct e752x_error_info info;

 edac_dbg(3, "\n");
 e752x_get_error_info(mci, &info);
 e752x_process_error_info(mci, &info, 1);
}
