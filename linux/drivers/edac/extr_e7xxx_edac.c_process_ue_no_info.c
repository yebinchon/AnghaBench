
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;


 int HW_EVENT_ERR_UNCORRECTED ;
 int edac_dbg (int,char*) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int ,int ,int ,int,int,int,char*,char*) ;

__attribute__((used)) static void process_ue_no_info(struct mem_ctl_info *mci)
{
 edac_dbg(3, "\n");

 edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1, 0, 0, 0, -1, -1, -1,
        "e7xxx UE log register overflow", "");
}
