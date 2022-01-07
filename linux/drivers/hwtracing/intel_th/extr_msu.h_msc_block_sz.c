
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_block_desc {int block_sz; } ;


 unsigned long MSC_BDESC ;

__attribute__((used)) static inline unsigned long msc_block_sz(struct msc_block_desc *bdesc)
{
 return bdesc->block_sz * 64 - MSC_BDESC;
}
