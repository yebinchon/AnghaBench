
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mem_ctl_info {struct csrow_info** csrows; } ;
struct csrow_info {int first_page; } ;


 int HW_EVENT_ERR_CORRECTED ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int,int,int,int ,int ,int,char*,char*) ;

__attribute__((used)) static void count_rec(struct mem_ctl_info *mci, u8 rec_cnt, u32 rec_addr)
{
 struct csrow_info *csrow = mci->csrows[0];
 u32 page, offset, syndrome;

 if (!rec_cnt)
  return;



 if (rec_cnt > 1) {

  page = 0;
  offset = 0;
  syndrome = 0;
  edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, rec_cnt-1,
         page, offset, syndrome, 0, 0, -1,
         "address(es) not available", "");
 }



 page = rec_addr >> PAGE_SHIFT;
 offset = rec_addr & ~PAGE_MASK;

 syndrome = 0;
 edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1,
        csrow->first_page + page, offset, syndrome,
        0, 0, -1, "", "");
}
