
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ CC_MAX_MLLI_ENTRY_SIZE ;
 int ENOMEM ;
 size_t LLI_WORD0_OFFSET ;
 size_t LLI_WORD1_OFFSET ;
 scalar_t__ MAX_NUM_OF_TOTAL_MLLI_ENTRIES ;
 int cc_lli_set_addr (scalar_t__*,scalar_t__) ;
 int cc_lli_set_size (scalar_t__*,scalar_t__) ;
 int dev_dbg (struct device*,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int dev_err (struct device*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int cc_render_buff_to_mlli(struct device *dev, dma_addr_t buff_dma,
      u32 buff_size, u32 *curr_nents,
      u32 **mlli_entry_pp)
{
 u32 *mlli_entry_p = *mlli_entry_pp;
 u32 new_nents;


 new_nents = (*curr_nents + buff_size / CC_MAX_MLLI_ENTRY_SIZE + 1);
 if (new_nents > MAX_NUM_OF_TOTAL_MLLI_ENTRIES) {
  dev_err(dev, "Too many mlli entries. current %d max %d\n",
   new_nents, MAX_NUM_OF_TOTAL_MLLI_ENTRIES);
  return -ENOMEM;
 }


 while (buff_size > CC_MAX_MLLI_ENTRY_SIZE) {
  cc_lli_set_addr(mlli_entry_p, buff_dma);
  cc_lli_set_size(mlli_entry_p, CC_MAX_MLLI_ENTRY_SIZE);
  dev_dbg(dev, "entry[%d]: single_buff=0x%08X size=%08X\n",
   *curr_nents, mlli_entry_p[LLI_WORD0_OFFSET],
   mlli_entry_p[LLI_WORD1_OFFSET]);
  buff_dma += CC_MAX_MLLI_ENTRY_SIZE;
  buff_size -= CC_MAX_MLLI_ENTRY_SIZE;
  mlli_entry_p = mlli_entry_p + 2;
  (*curr_nents)++;
 }

 cc_lli_set_addr(mlli_entry_p, buff_dma);
 cc_lli_set_size(mlli_entry_p, buff_size);
 dev_dbg(dev, "entry[%d]: single_buff=0x%08X size=%08X\n",
  *curr_nents, mlli_entry_p[LLI_WORD0_OFFSET],
  mlli_entry_p[LLI_WORD1_OFFSET]);
 mlli_entry_p = mlli_entry_p + 2;
 *mlli_entry_pp = mlli_entry_p;
 (*curr_nents)++;
 return 0;
}
