
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dib0070_state {int dummy; } ;


 int dib0070_read_reg (struct dib0070_state*,int) ;
 int dib0070_write_reg (struct dib0070_state*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static u16 dib0070_read_wbd_offset(struct dib0070_state *state, u8 gain)
{
 u16 tuner_en = dib0070_read_reg(state, 0x20);
 u16 offset;

 dib0070_write_reg(state, 0x18, 0x07ff);
 dib0070_write_reg(state, 0x20, 0x0800 | 0x4000 | 0x0040 | 0x0020 | 0x0010 | 0x0008 | 0x0002 | 0x0001);
 dib0070_write_reg(state, 0x0f, (1 << 14) | (2 << 12) | (gain << 9) | (1 << 8) | (1 << 7) | (0 << 0));
 msleep(9);
 offset = dib0070_read_reg(state, 0x19);
 dib0070_write_reg(state, 0x20, tuner_en);
 return offset;
}
