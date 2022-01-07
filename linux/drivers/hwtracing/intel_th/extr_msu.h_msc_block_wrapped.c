
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_block_desc {int hw_tag; } ;


 int MSC_HW_TAG_BLOCKWRAP ;
 int MSC_HW_TAG_WINWRAP ;

__attribute__((used)) static inline bool msc_block_wrapped(struct msc_block_desc *bdesc)
{
 if (bdesc->hw_tag & (MSC_HW_TAG_BLOCKWRAP | MSC_HW_TAG_WINWRAP))
  return 1;

 return 0;
}
