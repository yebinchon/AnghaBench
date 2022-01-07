
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GET_BITFIELD (int ,int,int) ;

__attribute__((used)) static int skx_bank_bits(u64 addr, int b0, int b1, int do_xor, int x0, int x1)
{
 int ret = GET_BITFIELD(addr, b0, b0) | (GET_BITFIELD(addr, b1, b1) << 1);

 if (do_xor)
  ret ^= GET_BITFIELD(addr, x0, x0) | (GET_BITFIELD(addr, x1, x1) << 1);

 return ret;
}
