
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int memcmd; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;


 int dib9000_write (struct dib9000_state*,int,int*,int) ;
 int dib9000_write_word (struct dib9000_state*,int,int) ;

__attribute__((used)) static void dib9000_risc_mem_setup_cmd(struct dib9000_state *state, u32 addr, u32 len, u8 reading)
{
 u8 b[14] = { 0 };



 b[1] = 1;



 b[4] = (u8) (addr >> 8);
 b[5] = (u8) (addr & 0xff);



 b[12] = (u8) (addr >> 8);
 b[13] = (u8) (addr & 0xff);

 addr += len;


 b[8] = (u8) (addr >> 8);
 b[9] = (u8) (addr & 0xff);

 dib9000_write(state, 1056, b, 14);
 if (reading)
  dib9000_write_word(state, 1056, (1 << 15) | 1);
 state->platform.risc.memcmd = -1;
}
