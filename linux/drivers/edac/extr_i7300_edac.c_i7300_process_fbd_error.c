
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
typedef int u16 ;
struct mem_ctl_info {struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {int tmp_prt_buffer; int pci_dev_16_1_fsb_addr_map; } ;


 int ARRAY_SIZE (int ) ;
 unsigned long BIT (int) ;
 int FERR_FAT_FBD ;
 unsigned long FERR_FAT_FBD_ERR_MASK ;
 int FERR_NF_FBD ;
 unsigned long FERR_NF_FBD_ERR_MASK ;
 char* GET_ERR_FROM_TABLE (int ,unsigned long) ;
 int GET_FBD_FAT_IDX (unsigned long) ;
 int GET_FBD_NF_IDX (unsigned long) ;
 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_FATAL ;
 int NRECMEMA ;
 unsigned int NRECMEMA_BANK (int ) ;
 unsigned int NRECMEMA_RANK (int ) ;
 int NRECMEMB ;
 unsigned int NRECMEMB_CAS (unsigned long) ;
 int NRECMEMB_IS_WR (unsigned long) ;
 unsigned int NRECMEMB_RAS (unsigned long) ;
 int PAGE_SIZE ;
 int RECMEMA ;
 unsigned int RECMEMA_BANK (int ) ;
 unsigned int RECMEMA_RANK (int ) ;
 int RECMEMB ;
 unsigned int RECMEMB_CAS (unsigned long) ;
 int RECMEMB_IS_WR (unsigned long) ;
 unsigned int RECMEMB_RAS (unsigned long) ;
 int REDMEMA ;
 int REDMEMB ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int ,int ,unsigned long,unsigned int,unsigned int,unsigned int,char*,int ) ;
 int ferr_fat_fbd_name ;
 int ferr_nf_fbd_name ;
 unsigned long find_first_bit (unsigned long*,int ) ;
 int pci_read_config_dword (int ,int ,unsigned long*) ;
 int pci_read_config_word (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,unsigned long) ;
 int snprintf (int ,int ,char*,unsigned int,unsigned int,unsigned int,unsigned long,char const*) ;
 scalar_t__ unlikely (unsigned long) ;

__attribute__((used)) static void i7300_process_fbd_error(struct mem_ctl_info *mci)
{
 struct i7300_pvt *pvt;
 u32 errnum, value, error_reg;
 u16 val16;
 unsigned branch, channel, bank, rank, cas, ras;
 u32 syndrome;

 unsigned long errors;
 const char *specific;
 bool is_wr;

 pvt = mci->pvt_info;


 pci_read_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
         FERR_FAT_FBD, &error_reg);
 if (unlikely(error_reg & FERR_FAT_FBD_ERR_MASK)) {
  errors = error_reg & FERR_FAT_FBD_ERR_MASK ;
  errnum = find_first_bit(&errors,
     ARRAY_SIZE(ferr_fat_fbd_name));
  specific = GET_ERR_FROM_TABLE(ferr_fat_fbd_name, errnum);
  branch = (GET_FBD_FAT_IDX(error_reg) == 2) ? 1 : 0;

  pci_read_config_word(pvt->pci_dev_16_1_fsb_addr_map,
         NRECMEMA, &val16);
  bank = NRECMEMA_BANK(val16);
  rank = NRECMEMA_RANK(val16);

  pci_read_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
    NRECMEMB, &value);
  is_wr = NRECMEMB_IS_WR(value);
  cas = NRECMEMB_CAS(value);
  ras = NRECMEMB_RAS(value);


  pci_write_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
    FERR_FAT_FBD, error_reg);

  snprintf(pvt->tmp_prt_buffer, PAGE_SIZE,
    "Bank=%d RAS=%d CAS=%d Err=0x%lx (%s))",
    bank, ras, cas, errors, specific);

  edac_mc_handle_error(HW_EVENT_ERR_FATAL, mci, 1, 0, 0, 0,
         branch, -1, rank,
         is_wr ? "Write error" : "Read error",
         pvt->tmp_prt_buffer);

 }


 pci_read_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
         FERR_NF_FBD, &error_reg);
 if (unlikely(error_reg & FERR_NF_FBD_ERR_MASK)) {
  errors = error_reg & FERR_NF_FBD_ERR_MASK;
  errnum = find_first_bit(&errors,
     ARRAY_SIZE(ferr_nf_fbd_name));
  specific = GET_ERR_FROM_TABLE(ferr_nf_fbd_name, errnum);
  branch = (GET_FBD_NF_IDX(error_reg) == 2) ? 1 : 0;

  pci_read_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
   REDMEMA, &syndrome);

  pci_read_config_word(pvt->pci_dev_16_1_fsb_addr_map,
         RECMEMA, &val16);
  bank = RECMEMA_BANK(val16);
  rank = RECMEMA_RANK(val16);

  pci_read_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
    RECMEMB, &value);
  is_wr = RECMEMB_IS_WR(value);
  cas = RECMEMB_CAS(value);
  ras = RECMEMB_RAS(value);

  pci_read_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
         REDMEMB, &value);
  channel = (branch << 1);


  channel += !!(value & BIT(17));


  pci_write_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
    FERR_NF_FBD, error_reg);


  snprintf(pvt->tmp_prt_buffer, PAGE_SIZE,
    "DRAM-Bank=%d RAS=%d CAS=%d, Err=0x%lx (%s))",
    bank, ras, cas, errors, specific);

  edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1, 0, 0,
         syndrome,
         branch >> 1, channel % 2, rank,
         is_wr ? "Write error" : "Read error",
         pvt->tmp_prt_buffer);
 }
 return;
}
