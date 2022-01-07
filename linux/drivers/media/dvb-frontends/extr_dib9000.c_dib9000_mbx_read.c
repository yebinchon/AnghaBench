
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int mbx_if_lock; int fw_is_running; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;


 int MBX_MAX_WORDS ;
 int dib9000_read16_noinc_attr (struct dib9000_state*,int,int*,int,int) ;
 int dib9000_read_word_attr (struct dib9000_state*,int,int) ;
 int dib9000_write_word_attr (struct dib9000_state*,int,int,int) ;
 int dprintk (char*,...) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u8 dib9000_mbx_read(struct dib9000_state *state, u16 * data, u8 risc_id, u16 attr)
{




 u16 tmp, i;
 u8 size;
 u8 mc_base;

 if (!state->platform.risc.fw_is_running)
  return 0;

 if (mutex_lock_interruptible(&state->platform.risc.mbx_if_lock) < 0) {
  dprintk("could not get the lock\n");
  return 0;
 }
 if (risc_id == 1)
  mc_base = 16;
 else
  mc_base = 0;


 *data = dib9000_read_word_attr(state, 1029 + mc_base, attr);

 size = *data & 0xff;
 if (size <= MBX_MAX_WORDS) {
  data++;
  size--;

  dib9000_read16_noinc_attr(state, 1029 + mc_base, (u8 *) data, size * 2, attr);


  for (i = 0; i < size; i++) {
   tmp = *data;
   *data = (tmp >> 8) | (tmp << 8);
   data++;
  }







 } else {
  dprintk("MBX: message is too big for message cache (%d), flushing message\n", size);
  size--;
  while (size--)
   dib9000_read16_noinc_attr(state, 1029 + mc_base, (u8 *) data, 2, attr);
 }

 dib9000_write_word_attr(state, 1028 + mc_base, 1 << 14, attr);

 mutex_unlock(&state->platform.risc.mbx_if_lock);

 return size + 1;
}
