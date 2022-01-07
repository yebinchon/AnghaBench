
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {int mem_lock; int fw_is_running; struct dib9000_fe_memory_map* fe_mm; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;
struct dib9000_fe_memory_map {int size; } ;


 int EINTR ;
 int EIO ;
 int dib9000_risc_mem_setup (struct dib9000_state*,size_t) ;
 int dib9000_risc_mem_write_chunks (struct dib9000_state*,size_t const*,int ) ;
 int dprintk (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dib9000_risc_mem_write(struct dib9000_state *state, u8 cmd, const u8 * b)
{
 struct dib9000_fe_memory_map *m = &state->platform.risc.fe_mm[cmd];
 if (!state->platform.risc.fw_is_running)
  return -EIO;

 if (mutex_lock_interruptible(&state->platform.risc.mem_lock) < 0) {
  dprintk("could not get the lock\n");
  return -EINTR;
 }
 dib9000_risc_mem_setup(state, cmd);
 dib9000_risc_mem_write_chunks(state, b, m->size);
 mutex_unlock(&state->platform.risc.mem_lock);
 return 0;
}
