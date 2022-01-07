
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DESC_LENGTH_BITS_NUM ;

__attribute__((used)) static u32 pd_trans_len(u32 val)
{
 return val & ((1 << (DESC_LENGTH_BITS_NUM + 1)) - 1);
}
