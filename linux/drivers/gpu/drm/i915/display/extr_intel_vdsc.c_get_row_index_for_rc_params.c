
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EINVAL ;
 int ROW_INDEX_10BPP ;
 int ROW_INDEX_12BPP ;
 int ROW_INDEX_15BPP ;
 int ROW_INDEX_6BPP ;
 int ROW_INDEX_8BPP ;

__attribute__((used)) static int get_row_index_for_rc_params(u16 compressed_bpp)
{
 switch (compressed_bpp) {
 case 6:
  return ROW_INDEX_6BPP;
 case 8:
  return ROW_INDEX_8BPP;
 case 10:
  return ROW_INDEX_10BPP;
 case 12:
  return ROW_INDEX_12BPP;
 case 15:
  return ROW_INDEX_15BPP;
 default:
  return -EINVAL;
 }
}
