
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_ctl_info {int dummy; } ;
struct ie31200_error_info {int errsts; int errsts2; int* eccerrlog; } ;


 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_UNCORRECTED ;
 int IE31200_ECCERRLOG_CE ;
 int IE31200_ECCERRLOG_SYNDROME (int) ;
 int IE31200_ECCERRLOG_UE ;
 int IE31200_ERRSTS_BITS ;
 int eccerrlog_row (int) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int ,int ,int ,int,int,int,char*,char*) ;
 int nr_channels ;

__attribute__((used)) static void ie31200_process_error_info(struct mem_ctl_info *mci,
           struct ie31200_error_info *info)
{
 int channel;
 u64 log;

 if (!(info->errsts & IE31200_ERRSTS_BITS))
  return;

 if ((info->errsts ^ info->errsts2) & IE31200_ERRSTS_BITS) {
  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1, 0, 0, 0,
         -1, -1, -1, "UE overwrote CE", "");
  info->errsts = info->errsts2;
 }

 for (channel = 0; channel < nr_channels; channel++) {
  log = info->eccerrlog[channel];
  if (log & IE31200_ECCERRLOG_UE) {
   edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
          0, 0, 0,
          eccerrlog_row(log),
          channel, -1,
          "ie31200 UE", "");
  } else if (log & IE31200_ECCERRLOG_CE) {
   edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1,
          0, 0,
          IE31200_ECCERRLOG_SYNDROME(log),
          eccerrlog_row(log),
          channel, -1,
          "ie31200 CE", "");
  }
 }
}
