
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_iter {int block; } ;
struct msc_block_desc {int dummy; } ;


 struct msc_block_desc* sg_virt (int ) ;

__attribute__((used)) static struct msc_block_desc *msc_iter_bdesc(struct msc_iter *iter)
{
 return sg_virt(iter->block);
}
