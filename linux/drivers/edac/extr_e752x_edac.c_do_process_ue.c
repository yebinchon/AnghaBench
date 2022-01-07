
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mem_ctl_info {scalar_t__ pvt_info; } ;
struct e752x_pvt {scalar_t__ mc_symmetric; } ;


 int HW_EVENT_ERR_UNCORRECTED ;
 int PAGE_SHIFT ;
 int edac_dbg (int,char*) ;
 int edac_mc_find_csrow_by_page (struct mem_ctl_info*,int) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int,int ,int ,int,int,int,char*,char*) ;
 int offset_in_page (int) ;

__attribute__((used)) static void do_process_ue(struct mem_ctl_info *mci, u16 error_one,
   u32 ded_add, u32 scrb_add)
{
 u32 error_2b, block_page;
 int row;
 struct e752x_pvt *pvt = (struct e752x_pvt *)mci->pvt_info;

 edac_dbg(3, "\n");

 if (error_one & 0x0202) {
  error_2b = ded_add;


  block_page = error_2b >> (PAGE_SHIFT - 4);

  row = pvt->mc_symmetric ?

   ((block_page >> 1) & 3) :
   edac_mc_find_csrow_by_page(mci, block_page);


  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
     block_page,
     offset_in_page(error_2b << 4), 0,
      row, -1, -1,
     "e752x UE from Read", "");

 }
 if (error_one & 0x0404) {
  error_2b = scrb_add;


  block_page = error_2b >> (PAGE_SHIFT - 4);

  row = pvt->mc_symmetric ?

   ((block_page >> 1) & 3) :
   edac_mc_find_csrow_by_page(mci, block_page);


  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
     block_page,
     offset_in_page(error_2b << 4), 0,
     row, -1, -1,
     "e752x UE from Scruber", "");
 }
}
