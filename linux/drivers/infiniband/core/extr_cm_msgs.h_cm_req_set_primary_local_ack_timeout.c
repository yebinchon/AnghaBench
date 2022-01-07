
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_req_msg {int primary_offset95; } ;



__attribute__((used)) static inline void cm_req_set_primary_local_ack_timeout(struct cm_req_msg *req_msg,
       u8 local_ack_timeout)
{
 req_msg->primary_offset95 = (u8) ((req_msg->primary_offset95 & 0x07) |
       (local_ack_timeout << 3));
}
