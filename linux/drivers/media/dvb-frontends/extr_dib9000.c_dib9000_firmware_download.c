
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef char u32 ;
typedef int u16 ;
struct dib9000_state {int dummy; } ;


 int EIO ;
 scalar_t__ dib9000_write16_noinc (struct dib9000_state*,int,int*,int) ;
 int dib9000_write_word (struct dib9000_state*,int,int) ;
 int dprintk (char*,char) ;

__attribute__((used)) static int dib9000_firmware_download(struct dib9000_state *state, u8 risc_id, u16 key, const u8 * code, u32 len)
{
 u16 offs;

 if (risc_id == 1)
  offs = 16;
 else
  offs = 0;


 dib9000_write_word(state, 1024 + offs, 0x000f);
 dib9000_write_word(state, 1025 + offs, 0);
 dib9000_write_word(state, 1031 + offs, key);

 dprintk("going to download %dB of microcode\n", len);
 if (dib9000_write16_noinc(state, 1026 + offs, (u8 *) code, (u16) len) != 0) {
  dprintk("error while downloading microcode for RISC %c\n", 'A' + risc_id);
  return -EIO;
 }

 dprintk("Microcode for RISC %c loaded\n", 'A' + risc_id);

 return 0;
}
