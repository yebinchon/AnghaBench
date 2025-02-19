
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mem_ctl_info {struct csrow_info** csrows; } ;
struct csrow_info {int first_page; } ;


 int HW_EVENT_ERR_UNCORRECTED ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int,int,int,int ,int ,int,char*,char*) ;

__attribute__((used)) static void count_un_rec(struct mem_ctl_info *mci, u8 un_rec_cnt,
    u32 un_rec_addr)
{
 struct csrow_info *csrow = mci->csrows[0];
 u32 page, offset, syndrome;

 if (!un_rec_cnt)
  return;



 page = un_rec_addr >> PAGE_SHIFT;
 offset = un_rec_addr & ~PAGE_MASK;

 syndrome = 0;
 edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
        csrow->first_page + page, offset, syndrome,
        0, 0, -1, "", "");



 if (un_rec_cnt > 1) {

  page = 0;
  offset = 0;
  syndrome = 0;
  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, un_rec_cnt-1,
         page, offset, syndrome, 0, 0, -1,
         "address(es) not available", "");
 }
}
