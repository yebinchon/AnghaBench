
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int mbx_lock; int fw_is_running; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;


 scalar_t__ dib9000_mbx_count (struct dib9000_state*,int,int ) ;
 int dib9000_mbx_fetch_to_cache (struct dib9000_state*,int ) ;
 int dib9000_read_word_attr (struct dib9000_state*,int,int ) ;
 int dprintk (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dib9000_mbx_process(struct dib9000_state *state, u16 attr)
{
 int ret = 0;

 if (!state->platform.risc.fw_is_running)
  return -1;

 if (mutex_lock_interruptible(&state->platform.risc.mbx_lock) < 0) {
  dprintk("could not get the lock\n");
  return -1;
 }

 if (dib9000_mbx_count(state, 1, attr))
  ret = dib9000_mbx_fetch_to_cache(state, attr);

 dib9000_read_word_attr(state, 1229, attr);


 mutex_unlock(&state->platform.risc.mbx_lock);

 return ret;
}
