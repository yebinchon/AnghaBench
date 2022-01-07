
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scmi_msg_hdr {int protocol_id; int id; } ;


 int MSG_XTRACT_ID (int ) ;
 int MSG_XTRACT_PROT_ID (int ) ;

__attribute__((used)) static inline void unpack_scmi_header(u32 msg_hdr, struct scmi_msg_hdr *hdr)
{
 hdr->id = MSG_XTRACT_ID(msg_hdr);
 hdr->protocol_id = MSG_XTRACT_PROT_ID(msg_hdr);
}
