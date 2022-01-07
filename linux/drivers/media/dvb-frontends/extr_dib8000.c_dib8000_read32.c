
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dib8000_state {int i2c_buffer_lock; } ;


 int __dib8000_read_word (struct dib8000_state*,int) ;
 int dprintk (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u32 dib8000_read32(struct dib8000_state *state, u16 reg)
{
 u16 rw[2];

 if (mutex_lock_interruptible(&state->i2c_buffer_lock) < 0) {
  dprintk("could not acquire lock\n");
  return 0;
 }

 rw[0] = __dib8000_read_word(state, reg + 0);
 rw[1] = __dib8000_read_word(state, reg + 1);

 mutex_unlock(&state->i2c_buffer_lock);

 return ((rw[0] << 16) | (rw[1]));
}
