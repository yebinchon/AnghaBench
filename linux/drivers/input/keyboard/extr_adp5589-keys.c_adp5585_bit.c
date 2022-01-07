
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char ADP5585_COL_SHIFT ;
 unsigned char ADP5585_MAX_ROW_NUM ;

__attribute__((used)) static unsigned char adp5585_bit(unsigned char offset)
{
 return (offset > ADP5585_MAX_ROW_NUM) ?
  1u << (offset - ADP5585_COL_SHIFT) : 1u << offset;
}
