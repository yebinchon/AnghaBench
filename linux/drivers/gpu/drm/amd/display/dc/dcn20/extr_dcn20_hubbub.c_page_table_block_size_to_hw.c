
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dcn_hubbub_page_table_block_size { ____Placeholder_dcn_hubbub_page_table_block_size } dcn_hubbub_page_table_block_size ;


 int ASSERT (int) ;
 int DCN_PAGE_TABLE_BLOCK_SIZE_4KB ;
 int DCN_PAGE_TABLE_BLOCK_SIZE_64KB ;

__attribute__((used)) static enum dcn_hubbub_page_table_block_size page_table_block_size_to_hw(unsigned int page_table_block_size)
{
 enum dcn_hubbub_page_table_block_size block_size = 0;

 switch (page_table_block_size) {
 case 4096:
  block_size = DCN_PAGE_TABLE_BLOCK_SIZE_4KB;
  break;
 case 65536:
  block_size = DCN_PAGE_TABLE_BLOCK_SIZE_64KB;
  break;
 default:
  ASSERT(0);
  block_size = page_table_block_size;
  break;
 }

 return block_size;
}
