
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct fsi_msg {int msg; int bits; } ;



__attribute__((used)) static void msg_push_bits(struct fsi_msg *msg, uint64_t data, int bits)
{
 msg->msg <<= bits;
 msg->msg |= data & ((1ull << bits) - 1);
 msg->bits += bits;
}
