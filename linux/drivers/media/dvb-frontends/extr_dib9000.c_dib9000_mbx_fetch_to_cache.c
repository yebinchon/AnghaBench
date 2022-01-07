
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int** message_cache; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;


 int DIB9000_MSG_CACHE_SIZE ;


 int dib9000_mbx_read (struct dib9000_state*,int*,int,int) ;
 int dib9000_risc_data_process (struct dib9000_state*,int*,int ) ;
 int dib9000_risc_debug_buf (struct dib9000_state*,int*,int ) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib9000_mbx_fetch_to_cache(struct dib9000_state *state, u16 attr)
{
 int i;
 u8 size;
 u16 *block;

 for (i = 0; i < DIB9000_MSG_CACHE_SIZE; i++) {
  block = state->platform.risc.message_cache[i];
  if (*block == 0) {
   size = dib9000_mbx_read(state, block, 1, attr);



   switch (*block >> 8) {
   case 128:
    dib9000_risc_debug_buf(state, block + 1, size);
    *block = 0;
    break;






   default:
    break;
   }

   return 1;
  }
 }
 dprintk("MBX: no free cache-slot found for new message...\n");
 return -1;
}
