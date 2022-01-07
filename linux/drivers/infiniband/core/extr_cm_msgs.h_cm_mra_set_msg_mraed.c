
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_mra_msg {int offset8; } ;



__attribute__((used)) static inline void cm_mra_set_msg_mraed(struct cm_mra_msg *mra_msg, u8 msg)
{
 mra_msg->offset8 = (u8) ((mra_msg->offset8 & 0x3F) | (msg << 6));
}
