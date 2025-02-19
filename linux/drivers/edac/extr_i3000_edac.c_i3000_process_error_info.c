
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ctl_info {TYPE_1__** csrows; } ;
struct i3000_error_info {int errsts; int errsts2; int derrsyn; int deap; int edeap; } ;
struct TYPE_2__ {int nr_channels; } ;


 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_UNCORRECTED ;
 int I3000_ERRSTS_BITS ;
 int I3000_ERRSTS_UE ;
 int deap_channel (int ) ;
 unsigned long deap_offset (int ) ;
 unsigned long deap_pfn (int ,int ) ;
 int edac_mc_find_csrow_by_page (struct mem_ctl_info*,unsigned long) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,unsigned long,unsigned long,int ,int,int,int,char*,char*) ;

__attribute__((used)) static int i3000_process_error_info(struct mem_ctl_info *mci,
    struct i3000_error_info *info,
    int handle_errors)
{
 int row, multi_chan, channel;
 unsigned long pfn, offset;

 multi_chan = mci->csrows[0]->nr_channels - 1;

 if (!(info->errsts & I3000_ERRSTS_BITS))
  return 0;

 if (!handle_errors)
  return 1;

 if ((info->errsts ^ info->errsts2) & I3000_ERRSTS_BITS) {
  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1, 0, 0, 0,
         -1, -1, -1,
         "UE overwrote CE", "");
  info->errsts = info->errsts2;
 }

 pfn = deap_pfn(info->edeap, info->deap);
 offset = deap_offset(info->deap);
 channel = deap_channel(info->deap);

 row = edac_mc_find_csrow_by_page(mci, pfn);

 if (info->errsts & I3000_ERRSTS_UE)
  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
         pfn, offset, 0,
         row, -1, -1,
         "i3000 UE", "");
 else
  edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1,
         pfn, offset, info->derrsyn,
         row, multi_chan ? channel : 0, -1,
         "i3000 CE", "");

 return 1;
}
