
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;
struct i5400_error_info {int ferr_fat_fbd; } ;
typedef int msg ;
typedef enum hw_event_mc_err_type { ____Placeholder_hw_event_mc_err_type } hw_event_mc_err_type ;


 int ARRAY_SIZE (int *) ;
 int EDAC_MC_LABEL_LEN ;
 unsigned long ERROR_FAT_MASK ;
 unsigned long FERR_NF_UNCORRECTABLE ;
 int HW_EVENT_ERR_FATAL ;
 int HW_EVENT_ERR_UNCORRECTED ;
 int edac_dbg (int ,char*,int,int,int,int,int,int,int ,int,int) ;
 int edac_mc_handle_error (int,struct mem_ctl_info*,int,int ,int ,int ,int,int,int,char*,char*) ;
 int * error_name ;
 int extract_fbdchan_indx (int ) ;
 int find_first_bit (unsigned long*,int ) ;
 int nrec_bank (struct i5400_error_info*) ;
 int nrec_buf_id (struct i5400_error_info*) ;
 int nrec_cas (struct i5400_error_info*) ;
 int nrec_rank (struct i5400_error_info*) ;
 int nrec_ras (struct i5400_error_info*) ;
 int nrec_rdwr (struct i5400_error_info*) ;
 int rdwr_str (int) ;
 int snprintf (char*,int,char*,int,int,int,int,unsigned long,int ) ;

__attribute__((used)) static void i5400_proccess_non_recoverable_info(struct mem_ctl_info *mci,
        struct i5400_error_info *info,
        unsigned long allErrors)
{
 char msg[EDAC_MC_LABEL_LEN + 1 + 90 + 80];
 int branch;
 int channel;
 int bank;
 int buf_id;
 int rank;
 int rdwr;
 int ras, cas;
 int errnum;
 char *type = ((void*)0);
 enum hw_event_mc_err_type tp_event = HW_EVENT_ERR_UNCORRECTED;

 if (!allErrors)
  return;

 if (allErrors & ERROR_FAT_MASK) {
  type = "FATAL";
  tp_event = HW_EVENT_ERR_FATAL;
 } else if (allErrors & FERR_NF_UNCORRECTABLE)
  type = "NON-FATAL uncorrected";
 else
  type = "NON-FATAL recoverable";



 branch = extract_fbdchan_indx(info->ferr_fat_fbd);
 channel = branch;


 bank = nrec_bank(info);
 rank = nrec_rank(info);
 buf_id = nrec_buf_id(info);
 rdwr = nrec_rdwr(info);
 ras = nrec_ras(info);
 cas = nrec_cas(info);

 edac_dbg(0, "\t\tDIMM= %d  Channels= %d,%d  (Branch= %d DRAM Bank= %d Buffer ID = %d rdwr= %s ras= %d cas= %d)\n",
   rank, channel, channel + 1, branch >> 1, bank,
   buf_id, rdwr_str(rdwr), ras, cas);


 errnum = find_first_bit(&allErrors, ARRAY_SIZE(error_name));


 snprintf(msg, sizeof(msg),
   "Bank=%d Buffer ID = %d RAS=%d CAS=%d Err=0x%lx (%s)",
   bank, buf_id, ras, cas, allErrors, error_name[errnum]);

 edac_mc_handle_error(tp_event, mci, 1, 0, 0, 0,
        branch >> 1, -1, rank,
        rdwr ? "Write error" : "Read error",
        msg);
}
