
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dib9000_state {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int IN_MSG_VERSION ;
 int OUT_MSG_REQ_VERSION ;
 scalar_t__ dib9000_mbx_get_message (struct dib9000_state*,int ,int*,int*) ;
 scalar_t__ dib9000_mbx_send (struct dib9000_state*,int ,int*,int) ;
 int dprintk (char*,...) ;

__attribute__((used)) static int dib9000_risc_check_version(struct dib9000_state *state)
{
 u8 r[4];
 u8 size;
 u16 fw_version = 0;

 if (dib9000_mbx_send(state, OUT_MSG_REQ_VERSION, &fw_version, 1) != 0)
  return -EIO;

 if (dib9000_mbx_get_message(state, IN_MSG_VERSION, (u16 *) r, &size) < 0)
  return -EIO;

 fw_version = (r[0] << 8) | r[1];
 dprintk("RISC: ver: %d.%02d (IC: %d)\n", fw_version >> 10, fw_version & 0x3ff, (r[2] << 8) | r[3]);

 if ((fw_version >> 10) != 7)
  return -EINVAL;

 switch (fw_version & 0x3ff) {
 case 11:
 case 12:
 case 14:
 case 15:
 case 16:
 case 17:
  break;
 default:
  dprintk("RISC: invalid firmware version");
  return -EINVAL;
 }

 dprintk("RISC: valid firmware version");
 return 0;
}
