
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r82600_error_info {int eapr; } ;
struct mem_ctl_info {int ctl_name; } ;


 int BIT (int) ;
 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_UNCORRECTED ;
 int PAGE_SHIFT ;
 int edac_mc_find_csrow_by_page (struct mem_ctl_info*,int) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int,int ,int,int ,int ,int,int ,char*) ;

__attribute__((used)) static int r82600_process_error_info(struct mem_ctl_info *mci,
    struct r82600_error_info *info,
    int handle_errors)
{
 int error_found;
 u32 eapaddr, page;
 u32 syndrome;

 error_found = 0;


 eapaddr = ((info->eapr >> 12) & 0x7FFF) << 13;

 syndrome = (info->eapr >> 4) & 0xFF;



 page = eapaddr >> PAGE_SHIFT;

 if (info->eapr & BIT(0)) {
  error_found = 1;

  if (handle_errors)
   edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1,
          page, 0, syndrome,
          edac_mc_find_csrow_by_page(mci, page),
          0, -1,
          mci->ctl_name, "");
 }

 if (info->eapr & BIT(1)) {
  error_found = 1;

  if (handle_errors)

   edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
          page, 0, 0,
          edac_mc_find_csrow_by_page(mci, page),
          0, -1,
          mci->ctl_name, "");
 }

 return error_found;
}
