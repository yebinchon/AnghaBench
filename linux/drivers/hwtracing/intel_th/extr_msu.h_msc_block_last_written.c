
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_block_desc {int hw_tag; } ;


 int MSC_HW_TAG_ENDBIT ;
 scalar_t__ msc_block_sz (struct msc_block_desc*) ;
 scalar_t__ msc_data_sz (struct msc_block_desc*) ;

__attribute__((used)) static inline bool msc_block_last_written(struct msc_block_desc *bdesc)
{
 if ((bdesc->hw_tag & MSC_HW_TAG_ENDBIT) ||
     (msc_data_sz(bdesc) != msc_block_sz(bdesc)))
  return 1;

 return 0;
}
