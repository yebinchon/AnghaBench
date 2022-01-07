
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct mem_ctl_info {TYPE_1__** csrows; } ;
struct TYPE_2__ {unsigned long first_page; } ;


 int KERN_ERR ;
 size_t MEAR_BANK_MASK ;
 size_t MEAR_BANK_SHIFT ;
 size_t MEAR_BCNT_MASK ;
 size_t MEAR_BCNT_SHIFT ;
 size_t MEAR_COL_MASK ;
 size_t MEAR_COL_SHIFT ;
 size_t MEAR_RANK_MASK ;
 size_t MEAR_RANK_SHIFT ;
 size_t MEAR_ROW_MASK ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int cpc925_mc_printk (struct mem_ctl_info*,int ,char*) ;
 int edac_dbg (int ,char*,unsigned long) ;

__attribute__((used)) static void cpc925_mc_get_pfn(struct mem_ctl_info *mci, u32 mear,
  unsigned long *pfn, unsigned long *offset, int *csrow)
{
 u32 bcnt, rank, col, bank, row;
 u32 c;
 unsigned long pa;
 int i;

 bcnt = (mear & MEAR_BCNT_MASK) >> MEAR_BCNT_SHIFT;
 rank = (mear & MEAR_RANK_MASK) >> MEAR_RANK_SHIFT;
 col = (mear & MEAR_COL_MASK) >> MEAR_COL_SHIFT;
 bank = (mear & MEAR_BANK_MASK) >> MEAR_BANK_SHIFT;
 row = mear & MEAR_ROW_MASK;

 *csrow = rank;
 pa = mci->csrows[rank]->first_page << PAGE_SHIFT;


 col += bcnt;
 for (i = 0; i < 11; i++) {
  c = col & 0x1;
  col >>= 1;
  pa |= c << (14 - i);
 }


 pa |= bank << 19;


 for (i = 0; i < 3; i++) {
  c = row & 0x1;
  row >>= 1;
  pa |= c << (26 - i);
 }

 for (i = 0; i < 3; i++) {
  c = row & 0x1;
  row >>= 1;
  pa |= c << (21 + i);
 }

 for (i = 0; i < 4; i++) {
  c = row & 0x1;
  row >>= 1;
  pa |= c << (18 - i);
 }

 for (i = 0; i < 3; i++) {
  c = row & 0x1;
  row >>= 1;
  pa |= c << (29 - i);
 }

 *offset = pa & (PAGE_SIZE - 1);
 *pfn = pa >> PAGE_SHIFT;

 edac_dbg(0, "ECC physical address 0x%lx\n", pa);
}
