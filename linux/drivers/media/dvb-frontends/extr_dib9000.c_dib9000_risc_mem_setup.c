
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int memcmd; struct dib9000_fe_memory_map* fe_mm; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;
struct dib9000_fe_memory_map {int size; int addr; } ;


 int dib9000_risc_mem_setup_cmd (struct dib9000_state*,int ,int,int) ;

__attribute__((used)) static void dib9000_risc_mem_setup(struct dib9000_state *state, u8 cmd)
{
 struct dib9000_fe_memory_map *m = &state->platform.risc.fe_mm[cmd & 0x7f];

 if (state->platform.risc.memcmd == cmd &&
     !(cmd & 0x80 && m->size < 67))
  return;
 dib9000_risc_mem_setup_cmd(state, m->addr, m->size, cmd & 0x80);
 state->platform.risc.memcmd = cmd;
}
