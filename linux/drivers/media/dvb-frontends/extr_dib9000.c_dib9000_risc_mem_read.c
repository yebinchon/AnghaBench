
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int mem_lock; int fw_is_running; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;


 int EINTR ;
 int EIO ;
 int dib9000_risc_mem_read_chunks (struct dib9000_state*,int*,int ) ;
 int dib9000_risc_mem_setup (struct dib9000_state*,int) ;
 int dprintk (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dib9000_risc_mem_read(struct dib9000_state *state, u8 cmd, u8 * b, u16 len)
{
 if (!state->platform.risc.fw_is_running)
  return -EIO;

 if (mutex_lock_interruptible(&state->platform.risc.mem_lock) < 0) {
  dprintk("could not get the lock\n");
  return -EINTR;
 }
 dib9000_risc_mem_setup(state, cmd | 0x80);
 dib9000_risc_mem_read_chunks(state, b, len);
 mutex_unlock(&state->platform.risc.mem_lock);
 return 0;
}
