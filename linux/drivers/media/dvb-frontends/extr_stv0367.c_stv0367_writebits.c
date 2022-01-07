
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stv0367_state {int dummy; } ;


 int extract_mask_pos (int,int*,int*) ;
 int stv0367_readreg (struct stv0367_state*,int) ;
 int stv0367_writereg (struct stv0367_state*,int,int) ;

__attribute__((used)) static void stv0367_writebits(struct stv0367_state *state, u32 label, u8 val)
{
 u8 reg, mask, pos;

 reg = stv0367_readreg(state, (label >> 16) & 0xffff);
 extract_mask_pos(label, &mask, &pos);

 val = mask & (val << pos);

 reg = (reg & (~mask)) | val;
 stv0367_writereg(state, (label >> 16) & 0xffff, reg);

}
