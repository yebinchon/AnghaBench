
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct block_header {int block_info; } ;


 int BLOCK_INFO_BLK_TYPE (int ) ;

__attribute__((used)) static inline u32 get_block_type(struct block_header *blk)
{
 return BLOCK_INFO_BLK_TYPE(blk->block_info);
}
