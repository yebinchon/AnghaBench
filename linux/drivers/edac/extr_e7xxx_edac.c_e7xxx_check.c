
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;
struct e7xxx_error_info {int dummy; } ;


 int e7xxx_get_error_info (struct mem_ctl_info*,struct e7xxx_error_info*) ;
 int e7xxx_process_error_info (struct mem_ctl_info*,struct e7xxx_error_info*,int) ;
 int edac_dbg (int,char*) ;

__attribute__((used)) static void e7xxx_check(struct mem_ctl_info *mci)
{
 struct e7xxx_error_info info;

 edac_dbg(3, "\n");
 e7xxx_get_error_info(mci, &info);
 e7xxx_process_error_info(mci, &info, 1);
}
