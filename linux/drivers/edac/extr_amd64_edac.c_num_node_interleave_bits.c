
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;

__attribute__((used)) static int num_node_interleave_bits(unsigned intlv_en)
{
 static const int intlv_shift_table[] = { 0, 1, 0, 2, 0, 0, 0, 3 };
 int n;

 BUG_ON(intlv_en > 7);
 n = intlv_shift_table[intlv_en];
 return n;
}
