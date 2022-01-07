
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int radeon_atom_set_enc_offset(int id)
{
 static const int offsets[] = { 133,
           132,
           131,
           130,
           129,
           128,
           0x13830 - 0x7030 };

 return offsets[id];
}
