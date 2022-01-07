
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct drxd_state {int dummy; } ;


 scalar_t__ CHUNK_SIZE ;
 scalar_t__ write_chunk (struct drxd_state*,scalar_t__,int *,scalar_t__,int ) ;

__attribute__((used)) static int WriteBlock(struct drxd_state *state,
        u32 Address, u16 BlockSize, u8 *pBlock, u8 Flags)
{
 while (BlockSize > 0) {
  u16 Chunk = BlockSize > CHUNK_SIZE ? CHUNK_SIZE : BlockSize;

  if (write_chunk(state, Address, pBlock, Chunk, Flags) < 0)
   return -1;
  pBlock += Chunk;
  Address += (Chunk >> 1);
  BlockSize -= Chunk;
 }
 return 0;
}
