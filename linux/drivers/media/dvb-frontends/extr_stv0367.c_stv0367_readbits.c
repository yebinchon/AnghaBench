
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stv0367_state {int dummy; } ;


 int extract_mask_pos (int,int*,int*) ;
 int stv0367_readreg (struct stv0367_state*,int) ;

__attribute__((used)) static u8 stv0367_readbits(struct stv0367_state *state, u32 label)
{
 u8 val = 0xff;
 u8 mask, pos;

 extract_mask_pos(label, &mask, &pos);

 val = stv0367_readreg(state, label >> 16);
 val = (val & mask) >> pos;

 return val;
}
