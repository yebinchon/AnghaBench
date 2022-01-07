
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct cdn_dp_device {int dummy; } ;


 int cdp_dp_mailbox_write (struct cdn_dp_device*,int) ;

__attribute__((used)) static int cdn_dp_mailbox_send(struct cdn_dp_device *dp, u8 module_id,
          u8 opcode, u16 size, u8 *message)
{
 u8 header[4];
 int ret, i;

 header[0] = opcode;
 header[1] = module_id;
 header[2] = (size >> 8) & 0xff;
 header[3] = size & 0xff;

 for (i = 0; i < 4; i++) {
  ret = cdp_dp_mailbox_write(dp, header[i]);
  if (ret)
   return ret;
 }

 for (i = 0; i < size; i++) {
  ret = cdp_dp_mailbox_write(dp, message[i]);
  if (ret)
   return ret;
 }

 return 0;
}
