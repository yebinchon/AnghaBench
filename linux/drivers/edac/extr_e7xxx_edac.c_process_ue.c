
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem_ctl_info {int dummy; } ;
struct e7xxx_error_info {int dram_uelog_add; } ;


 int HW_EVENT_ERR_UNCORRECTED ;
 int edac_dbg (int,char*) ;
 int edac_mc_find_csrow_by_page (struct mem_ctl_info*,int) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int,int ,int ,int,int,int,char*,char*) ;

__attribute__((used)) static void process_ue(struct mem_ctl_info *mci, struct e7xxx_error_info *info)
{
 u32 error_2b, block_page;
 int row;

 edac_dbg(3, "\n");

 error_2b = info->dram_uelog_add;

 block_page = error_2b >> 6;
 row = edac_mc_find_csrow_by_page(mci, block_page);

 edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1, block_page, 0, 0,
        row, -1, -1, "e7xxx UE", "");
}
