
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_block_desc {int valid_dw; } ;


 unsigned long MSC_BDESC ;

__attribute__((used)) static inline unsigned long msc_data_sz(struct msc_block_desc *bdesc)
{
 if (!bdesc->valid_dw)
  return 0;

 return bdesc->valid_dw * 4 - MSC_BDESC;
}
