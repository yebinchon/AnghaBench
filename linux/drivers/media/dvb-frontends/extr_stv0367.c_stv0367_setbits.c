
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int extract_mask_pos (int ,int*,int*) ;

__attribute__((used)) static void stv0367_setbits(u8 *reg, u32 label, u8 val)
{
 u8 mask, pos;

 extract_mask_pos(label, &mask, &pos);

 val = mask & (val << pos);

 (*reg) = ((*reg) & (~mask)) | val;
}
