
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_rep_msg {int offset27; } ;



__attribute__((used)) static inline u8 cm_rep_get_srq(struct cm_rep_msg *rep_msg)
{
 return (u8) ((rep_msg->offset27 >> 4) & 0x1);
}
