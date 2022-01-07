
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct fsi_msg {int bits; int msg; } ;


 scalar_t__ crc4 (scalar_t__,int,int) ;
 int msg_push_bits (struct fsi_msg*,scalar_t__,int) ;

__attribute__((used)) static void msg_push_crc(struct fsi_msg *msg)
{
 uint8_t crc;
 int top;

 top = msg->bits & 0x3;


 crc = crc4(0, 1 << top | msg->msg >> (msg->bits - top), top + 1);


 crc = crc4(crc, msg->msg, msg->bits - top);

 msg_push_bits(msg, crc, 4);
}
