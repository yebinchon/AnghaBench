
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct drxk_state {int dummy; } ;


 int EINVAL ;
 int block_crc ;
 int dprintk (int,char*) ;
 int drain ;
 int flags ;
 int pr_err (char*,...) ;
 int write_block (struct drxk_state*,int,int,int const*) ;

__attribute__((used)) static int download_microcode(struct drxk_state *state,
        const u8 p_mc_image[], u32 length)
{
 const u8 *p_src = p_mc_image;
 u32 address;
 u16 n_blocks;
 u16 block_size;
 u32 offset = 0;
 u32 i;
 int status = 0;

 dprintk(1, "\n");






 p_src += sizeof(u16);
 offset += sizeof(u16);
 n_blocks = (p_src[0] << 8) | p_src[1];
 p_src += sizeof(u16);
 offset += sizeof(u16);

 for (i = 0; i < n_blocks; i += 1) {
  address = (p_src[0] << 24) | (p_src[1] << 16) |
      (p_src[2] << 8) | p_src[3];
  p_src += sizeof(u32);
  offset += sizeof(u32);

  block_size = ((p_src[0] << 8) | p_src[1]) * sizeof(u16);
  p_src += sizeof(u16);
  offset += sizeof(u16);





  p_src += sizeof(u16);
  offset += sizeof(u16);





  p_src += sizeof(u16);
  offset += sizeof(u16);

  if (offset + block_size > length) {
   pr_err("Firmware is corrupted.\n");
   return -EINVAL;
  }

  status = write_block(state, address, block_size, p_src);
  if (status < 0) {
   pr_err("Error %d while loading firmware\n", status);
   break;
  }
  p_src += block_size;
  offset += block_size;
 }
 return status;
}
