
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_block_desc {int valid_dw; } ;


 int msc_data_sz (struct msc_block_desc*) ;

__attribute__((used)) static inline bool msc_block_is_empty(struct msc_block_desc *bdesc)
{

 if (!bdesc->valid_dw)
  return 1;


 if (!msc_data_sz(bdesc))
  return 1;

 return 0;
}
