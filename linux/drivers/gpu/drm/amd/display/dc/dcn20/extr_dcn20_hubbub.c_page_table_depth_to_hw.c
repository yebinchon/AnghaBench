
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dcn_hubbub_page_table_depth { ____Placeholder_dcn_hubbub_page_table_depth } dcn_hubbub_page_table_depth ;


 int ASSERT (int) ;
 int DCN_PAGE_TABLE_DEPTH_1_LEVEL ;
 int DCN_PAGE_TABLE_DEPTH_2_LEVEL ;
 int DCN_PAGE_TABLE_DEPTH_3_LEVEL ;
 int DCN_PAGE_TABLE_DEPTH_4_LEVEL ;

__attribute__((used)) static enum dcn_hubbub_page_table_depth page_table_depth_to_hw(unsigned int page_table_depth)
{
 enum dcn_hubbub_page_table_depth depth = 0;

 switch (page_table_depth) {
 case 1:
  depth = DCN_PAGE_TABLE_DEPTH_1_LEVEL;
  break;
 case 2:
  depth = DCN_PAGE_TABLE_DEPTH_2_LEVEL;
  break;
 case 3:
  depth = DCN_PAGE_TABLE_DEPTH_3_LEVEL;
  break;
 case 4:
  depth = DCN_PAGE_TABLE_DEPTH_4_LEVEL;
  break;
 default:
  ASSERT(0);
  break;
 }

 return depth;
}
