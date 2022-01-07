
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int fw_is_running; int memcmd; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;


 int EINVAL ;
 int EIO ;
 int dib9000_firmware_download (struct dib9000_state*,int,int,int const*,int ) ;
 scalar_t__ dib9000_mbx_host_init (struct dib9000_state*,int) ;
 scalar_t__ dib9000_risc_check_version (struct dib9000_state*) ;
 int dib9000_write_word (struct dib9000_state*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static int dib9000_fw_boot(struct dib9000_state *state, const u8 * codeA, u32 lenA, const u8 * codeB, u32 lenB)
{

 dib9000_write_word(state, 1225, 0x02);
 dib9000_write_word(state, 1226, 0x05);


 dib9000_write_word(state, 1542, 1);


 dib9000_write_word(state, 1074, 0);
 dib9000_write_word(state, 1075, 0);


 dib9000_write_word(state, 1237, 0);


 if (codeA != ((void*)0))
  dib9000_write_word(state, 1024, 2);
 else
  dib9000_write_word(state, 1024, 15);
 if (codeB != ((void*)0))
  dib9000_write_word(state, 1040, 2);

 if (codeA != ((void*)0))
  dib9000_firmware_download(state, 0, 0x1234, codeA, lenA);
 if (codeB != ((void*)0))
  dib9000_firmware_download(state, 1, 0x1234, codeB, lenB);


 if (codeA != ((void*)0))
  dib9000_write_word(state, 1024, 0);
 if (codeB != ((void*)0))
  dib9000_write_word(state, 1040, 0);

 if (codeA != ((void*)0))
  if (dib9000_mbx_host_init(state, 0) != 0)
   return -EIO;
 if (codeB != ((void*)0))
  if (dib9000_mbx_host_init(state, 1) != 0)
   return -EIO;

 msleep(100);
 state->platform.risc.fw_is_running = 1;

 if (dib9000_risc_check_version(state) != 0)
  return -EINVAL;

 state->platform.risc.memcmd = 0xff;
 return 0;
}
