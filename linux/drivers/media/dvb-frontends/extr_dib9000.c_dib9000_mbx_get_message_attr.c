
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct TYPE_3__ {int** message_cache; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;


 size_t DIB9000_MSG_CACHE_SIZE ;
 int dib9000_mbx_process (struct dib9000_state*,int) ;
 int dprintk (char*,int) ;
 int memcpy (int*,int*,size_t) ;

__attribute__((used)) static int dib9000_mbx_get_message_attr(struct dib9000_state *state, u16 id, u16 * msg, u8 * size, u16 attr)
{
 u8 i;
 u16 *block;
 u16 timeout = 30;

 *msg = 0;
 do {

  for (i = 0; i < DIB9000_MSG_CACHE_SIZE; i++) {
   block = state->platform.risc.message_cache[i];
   if ((*block >> 8) == id) {
    *size = (*block & 0xff) - 1;
    memcpy(msg, block + 1, (*size) * 2);
    *block = 0;
    i = 0;
    break;
   }
  }

  if (i == 0)
   break;

  if (dib9000_mbx_process(state, attr) == -1)
   return -1;

 } while (--timeout);

 if (timeout == 0) {
  dprintk("waiting for message %d timed out\n", id);
  return -1;
 }

 return i == 0;
}
