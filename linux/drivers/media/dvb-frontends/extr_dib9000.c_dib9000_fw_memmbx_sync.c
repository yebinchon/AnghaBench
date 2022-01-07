
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {int fw_is_running; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {scalar_t__* i2c_read_buffer; TYPE_2__ platform; } ;


 int EIO ;
 int FE_MM_RW_SYNC ;
 int dib9000_risc_mem_read (struct dib9000_state*,int ,scalar_t__*,int) ;
 int dib9000_risc_mem_write (struct dib9000_state*,int ,scalar_t__*) ;

__attribute__((used)) static int dib9000_fw_memmbx_sync(struct dib9000_state *state, u8 i)
{
 u8 index_loop = 10;

 if (!state->platform.risc.fw_is_running)
  return 0;
 dib9000_risc_mem_write(state, FE_MM_RW_SYNC, &i);
 do {
  dib9000_risc_mem_read(state, FE_MM_RW_SYNC, state->i2c_read_buffer, 1);
 } while (state->i2c_read_buffer[0] && index_loop--);

 if (index_loop > 0)
  return 0;
 return -EIO;
}
