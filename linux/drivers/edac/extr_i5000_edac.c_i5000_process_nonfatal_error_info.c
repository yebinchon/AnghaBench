
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem_ctl_info {int dummy; } ;
struct i5000_error_info {int ferr_nf_fbd; int recmemb; int recmema; int redmemb; int nrecmemb; int nrecmema; } ;
typedef int msg ;


 int EDAC_MC_LABEL_LEN ;
 int EXTRACT_FBDCHAN_INDX (int) ;
 int FERR_NF_CORRECTABLE ;
 int FERR_NF_DIMM_SPARE ;
 int FERR_NF_MASK ;
 int FERR_NF_NON_RETRY ;
 int FERR_NF_NORTH_CRC ;
 int FERR_NF_SPD_PROTOCOL ;
 int FERR_NF_UNCORRECTABLE ;
 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_UNCORRECTED ;
 int NREC_BANK (int ) ;
 int NREC_CAS (int ) ;
 int NREC_RANK (int ) ;
 int NREC_RAS (int ) ;
 int NREC_RDWR (int ) ;
 int REC_BANK (int ) ;
 int REC_CAS (int ) ;
 scalar_t__ REC_ECC_LOCATOR_ODD (int ) ;
 int REC_RANK (int ) ;
 int REC_RAS (int ) ;
 int REC_RDWR (int ) ;
 int edac_dbg (int ,char*,int,...) ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int ,int ,int ,int,int,int,char*,char*) ;
 int misc_messages ;
 int snprintf (char*,int,char*,int,...) ;

__attribute__((used)) static void i5000_process_nonfatal_error_info(struct mem_ctl_info *mci,
     struct i5000_error_info *info,
     int handle_errors)
{
 char msg[EDAC_MC_LABEL_LEN + 1 + 170];
 char *specific = ((void*)0);
 u32 allErrors;
 u32 ue_errors;
 u32 ce_errors;
 u32 misc_errors;
 int branch;
 int channel;
 int bank;
 int rank;
 int rdwr;
 int ras, cas;


 allErrors = (info->ferr_nf_fbd & FERR_NF_MASK);
 if (!allErrors)
  return;


 ue_errors = allErrors & FERR_NF_UNCORRECTABLE;
 if (ue_errors) {
  edac_dbg(0, "\tUncorrected bits= 0x%x\n", ue_errors);

  branch = EXTRACT_FBDCHAN_INDX(info->ferr_nf_fbd);





  channel = branch & 2;

  bank = NREC_BANK(info->nrecmema);
  rank = NREC_RANK(info->nrecmema);
  rdwr = NREC_RDWR(info->nrecmema);
  ras = NREC_RAS(info->nrecmemb);
  cas = NREC_CAS(info->nrecmemb);

  edac_dbg(0, "\t\tCSROW= %d  Channels= %d,%d  (Branch= %d DRAM Bank= %d rdwr= %s ras= %d cas= %d)\n",
    rank, channel, channel + 1, branch >> 1, bank,
    rdwr ? "Write" : "Read", ras, cas);

  switch (ue_errors) {
  case 145:
   specific = "Non-Aliased Uncorrectable Patrol Data ECC";
   break;
  case 146:
   specific = "Non-Aliased Uncorrectable Spare-Copy "
     "Data ECC";
   break;
  case 147:
   specific = "Non-Aliased Uncorrectable Mirrored Demand "
     "Data ECC";
   break;
  case 128:
   specific = "Non-Aliased Uncorrectable Non-Mirrored "
     "Demand Data ECC";
   break;
  case 129:
   specific = "Aliased Uncorrectable Patrol Data ECC";
   break;
  case 130:
   specific = "Aliased Uncorrectable Spare-Copy Data ECC";
   break;
  case 131:
   specific = "Aliased Uncorrectable Mirrored Demand "
     "Data ECC";
   break;
  case 132:
   specific = "Aliased Uncorrectable Non-Mirrored Demand "
     "Data ECC";
   break;
  case 133:
   specific = "Uncorrectable Data ECC on Replay";
   break;
  }


  snprintf(msg, sizeof(msg),
    "Rank=%d Bank=%d RAS=%d CAS=%d, UE Err=0x%x (%s)",
    rank, bank, ras, cas, ue_errors, specific);


  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1, 0, 0, 0,
    channel >> 1, -1, rank,
    rdwr ? "Write error" : "Read error",
    msg);
 }


 ce_errors = allErrors & FERR_NF_CORRECTABLE;
 if (ce_errors) {
  edac_dbg(0, "\tCorrected bits= 0x%x\n", ce_errors);

  branch = EXTRACT_FBDCHAN_INDX(info->ferr_nf_fbd);

  channel = 0;
  if (REC_ECC_LOCATOR_ODD(info->redmemb))
   channel = 1;



  channel += branch;

  bank = REC_BANK(info->recmema);
  rank = REC_RANK(info->recmema);
  rdwr = REC_RDWR(info->recmema);
  ras = REC_RAS(info->recmemb);
  cas = REC_CAS(info->recmemb);

  edac_dbg(0, "\t\tCSROW= %d Channel= %d  (Branch %d DRAM Bank= %d rdwr= %s ras= %d cas= %d)\n",
    rank, channel, branch >> 1, bank,
    rdwr ? "Write" : "Read", ras, cas);

  switch (ce_errors) {
  case 141:
   specific = "Correctable Non-Mirrored Demand Data ECC";
   break;
  case 140:
   specific = "Correctable Mirrored Demand Data ECC";
   break;
  case 139:
   specific = "Correctable Spare-Copy Data ECC";
   break;
  case 138:
   specific = "Correctable Patrol Data ECC";
   break;
  }


  snprintf(msg, sizeof(msg),
    "Rank=%d Bank=%d RDWR=%s RAS=%d "
    "CAS=%d, CE Err=0x%x (%s))", branch >> 1, bank,
    rdwr ? "Write" : "Read", ras, cas, ce_errors,
    specific);


  edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1, 0, 0, 0,
    channel >> 1, channel % 2, rank,
    rdwr ? "Write error" : "Read error",
    msg);
 }

 if (!misc_messages)
  return;

 misc_errors = allErrors & (FERR_NF_NON_RETRY | FERR_NF_NORTH_CRC |
       FERR_NF_SPD_PROTOCOL | FERR_NF_DIMM_SPARE);
 if (misc_errors) {
  switch (misc_errors) {
  case 144:
   specific = "Non-Retry or Redundant Retry FBD Memory "
     "Alert or Redundant Fast Reset Timeout";
   break;
  case 143:
   specific = "Non-Retry or Redundant Retry FBD "
     "Configuration Alert";
   break;
  case 142:
   specific = "Non-Retry or Redundant Retry FBD "
     "Northbound CRC error on read data";
   break;
  case 137:
   specific = "FBD Northbound CRC error on "
     "FBD Sync Status";
   break;
  case 136:
   specific = "SPD protocol error";
   break;
  case 135:
   specific = "DIMM-spare copy started";
   break;
  case 134:
   specific = "DIMM-spare copy completed";
   break;
  }
  branch = EXTRACT_FBDCHAN_INDX(info->ferr_nf_fbd);


  snprintf(msg, sizeof(msg),
    "Err=%#x (%s)", misc_errors, specific);


  edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1, 0, 0, 0,
    branch >> 1, -1, -1,
    "Misc error", msg);
 }
}
