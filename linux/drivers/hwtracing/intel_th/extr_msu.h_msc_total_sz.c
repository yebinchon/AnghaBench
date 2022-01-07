
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_block_desc {int valid_dw; } ;



__attribute__((used)) static inline unsigned long msc_total_sz(struct msc_block_desc *bdesc)
{
 return bdesc->valid_dw * 4;
}
