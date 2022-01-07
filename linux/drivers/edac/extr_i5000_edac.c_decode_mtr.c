
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MTR_DIMMS_PRESENT (int ) ;
 int MTR_DIMM_COLS (int ) ;
 scalar_t__ MTR_DIMM_RANK (int ) ;
 int MTR_DIMM_ROWS (int ) ;
 char* MTR_DRAM_BANKS (int ) ;
 char* MTR_DRAM_WIDTH (int ) ;
 int edac_dbg (int,char*,...) ;

__attribute__((used)) static void decode_mtr(int slot_row, u16 mtr)
{
 int ans;

 ans = MTR_DIMMS_PRESENT(mtr);

 edac_dbg(2, "\tMTR%d=0x%x:  DIMMs are %sPresent\n",
   slot_row, mtr, ans ? "" : "NOT ");
 if (!ans)
  return;

 edac_dbg(2, "\t\tWIDTH: x%d\n", MTR_DRAM_WIDTH(mtr));
 edac_dbg(2, "\t\tNUMBANK: %d bank(s)\n", MTR_DRAM_BANKS(mtr));
 edac_dbg(2, "\t\tNUMRANK: %s\n",
   MTR_DIMM_RANK(mtr) ? "double" : "single");
 edac_dbg(2, "\t\tNUMROW: %s\n",
   MTR_DIMM_ROWS(mtr) == 0 ? "8,192 - 13 rows" :
   MTR_DIMM_ROWS(mtr) == 1 ? "16,384 - 14 rows" :
   MTR_DIMM_ROWS(mtr) == 2 ? "32,768 - 15 rows" :
   "reserved");
 edac_dbg(2, "\t\tNUMCOL: %s\n",
   MTR_DIMM_COLS(mtr) == 0 ? "1,024 - 10 columns" :
   MTR_DIMM_COLS(mtr) == 1 ? "2,048 - 11 columns" :
   MTR_DIMM_COLS(mtr) == 2 ? "4,096 - 12 columns" :
   "reserved");
}
