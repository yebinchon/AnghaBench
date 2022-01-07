
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mem_ctl_info {scalar_t__ pvt_info; } ;
struct e752x_pvt {int* map; scalar_t__ mc_symmetric; } ;


 int HW_EVENT_ERR_CORRECTED ;
 int KERN_WARNING ;
 int PAGE_SHIFT ;
 int e752x_mc_printk (struct mem_ctl_info*,int ,char*,int) ;
 int e752x_printk (int ,char*,int,...) ;
 int edac_dbg (int,char*) ;
 int edac_mc_find_csrow_by_page (struct mem_ctl_info*,int) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int,int ,int,int,int,int,char*,char*) ;
 int offset_in_page (int) ;

__attribute__((used)) static void do_process_ce(struct mem_ctl_info *mci, u16 error_one,
   u32 sec1_add, u16 sec1_syndrome)
{
 u32 page;
 int row;
 int channel;
 int i;
 struct e752x_pvt *pvt = (struct e752x_pvt *)mci->pvt_info;

 edac_dbg(3, "\n");


 page = sec1_add >> (PAGE_SHIFT - 4);


 if (pvt->mc_symmetric) {

  row = ((page >> 1) & 3);
  e752x_printk(KERN_WARNING,
   "Test row %d Table %d %d %d %d %d %d %d %d\n", row,
   pvt->map[0], pvt->map[1], pvt->map[2], pvt->map[3],
   pvt->map[4], pvt->map[5], pvt->map[6],
   pvt->map[7]);


  for (i = 0; i < 8; i++) {
   if (pvt->map[i] == row)
    break;
  }

  e752x_printk(KERN_WARNING, "Test computed row %d\n", i);

  if (i < 8)
   row = i;
  else
   e752x_mc_printk(mci, KERN_WARNING,
     "row %d not found in remap table\n",
     row);
 } else
  row = edac_mc_find_csrow_by_page(mci, page);


 channel = !(error_one & 1);


 edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1,
        page, offset_in_page(sec1_add << 4), sec1_syndrome,
        row, channel, -1,
        "e752x CE", "");
}
