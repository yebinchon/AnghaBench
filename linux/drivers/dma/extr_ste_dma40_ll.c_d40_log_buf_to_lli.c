
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct d40_log_lli {int dummy; } ;
typedef int dma_addr_t ;


 unsigned int LLI_ADDR_INC ;
 int d40_log_fill_lli (struct d40_log_lli*,int,int,int ,int ,unsigned int) ;
 int d40_seg_size (int,int ,int ) ;

__attribute__((used)) static struct d40_log_lli *d40_log_buf_to_lli(struct d40_log_lli *lli_sg,
           dma_addr_t addr,
           int size,
           u32 lcsp13,
           u32 data_width1,
           u32 data_width2,
           unsigned int flags)
{
 bool addr_inc = flags & LLI_ADDR_INC;
 struct d40_log_lli *lli = lli_sg;
 int size_rest = size;
 int size_seg = 0;

 do {
  size_seg = d40_seg_size(size_rest, data_width1, data_width2);
  size_rest -= size_seg;

  d40_log_fill_lli(lli,
     addr,
     size_seg,
     lcsp13, data_width1,
     flags);
  if (addr_inc)
   addr += size_seg;
  lli++;
 } while (size_rest);

 return lli;
}
