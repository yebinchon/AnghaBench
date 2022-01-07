
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_req_msg {int offset50; } ;



__attribute__((used)) static inline void cm_req_set_path_mtu(struct cm_req_msg *req_msg, u8 path_mtu)
{
 req_msg->offset50 = (u8) ((req_msg->offset50 & 0xF) | (path_mtu << 4));
}
