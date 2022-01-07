
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mem_ctl_info {int dummy; } ;
struct e7xxx_error_info {int dram_celog_add; int dram_celog_syndrome; } ;


 int HW_EVENT_ERR_CORRECTED ;
 int e7xxx_find_channel (int ) ;
 int edac_dbg (int,char*) ;
 int edac_mc_find_csrow_by_page (struct mem_ctl_info*,int) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int,int ,int ,int,int,int,char*,char*) ;

__attribute__((used)) static void process_ce(struct mem_ctl_info *mci, struct e7xxx_error_info *info)
{
 u32 error_1b, page;
 u16 syndrome;
 int row;
 int channel;

 edac_dbg(3, "\n");

 error_1b = info->dram_celog_add;

 page = error_1b >> 6;

 syndrome = info->dram_celog_syndrome;

 row = edac_mc_find_csrow_by_page(mci, page);

 channel = e7xxx_find_channel(syndrome);
 edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1, page, 0, syndrome,
        row, channel, -1, "e7xxx CE", "");
}
