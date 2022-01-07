
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ctl_info {TYPE_1__** csrows; } ;
struct i82875p_error_info {int errsts; int errsts2; int eap; int des; int derrsyn; } ;
struct TYPE_2__ {int nr_channels; } ;


 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_UNCORRECTED ;
 int PAGE_SHIFT ;
 int edac_mc_find_csrow_by_page (struct mem_ctl_info*,int) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int,int ,int ,int,int,int,char*,char*) ;

__attribute__((used)) static int i82875p_process_error_info(struct mem_ctl_info *mci,
    struct i82875p_error_info *info,
    int handle_errors)
{
 int row, multi_chan;

 multi_chan = mci->csrows[0]->nr_channels - 1;

 if (!(info->errsts & 0x0081))
  return 0;

 if (!handle_errors)
  return 1;

 if ((info->errsts ^ info->errsts2) & 0x0081) {
  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1, 0, 0, 0,
         -1, -1, -1,
         "UE overwrote CE", "");
  info->errsts = info->errsts2;
 }

 info->eap >>= PAGE_SHIFT;
 row = edac_mc_find_csrow_by_page(mci, info->eap);

 if (info->errsts & 0x0080)
  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
         info->eap, 0, 0,
         row, -1, -1,
         "i82875p UE", "");
 else
  edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1,
         info->eap, 0, info->derrsyn,
         row, multi_chan ? (info->des & 0x1) : 0,
         -1, "i82875p CE", "");

 return 1;
}
