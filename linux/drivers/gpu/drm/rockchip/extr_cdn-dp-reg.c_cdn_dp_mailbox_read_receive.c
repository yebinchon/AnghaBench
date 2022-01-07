
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
typedef size_t u16 ;
struct cdn_dp_device {int dummy; } ;


 int cdn_dp_mailbox_read (struct cdn_dp_device*) ;

__attribute__((used)) static int cdn_dp_mailbox_read_receive(struct cdn_dp_device *dp,
           u8 *buff, u16 buff_size)
{
 u32 i;
 int ret;

 for (i = 0; i < buff_size; i++) {
  ret = cdn_dp_mailbox_read(dp);
  if (ret < 0)
   return ret;

  buff[i] = ret;
 }

 return 0;
}
