
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scmi_msg_hdr {int protocol_id; int seq; int id; } ;


 int FIELD_PREP (int ,int ) ;
 int MSG_ID_MASK ;
 int MSG_PROTOCOL_ID_MASK ;
 int MSG_TOKEN_ID_MASK ;

__attribute__((used)) static inline u32 pack_scmi_header(struct scmi_msg_hdr *hdr)
{
 return FIELD_PREP(MSG_ID_MASK, hdr->id) |
  FIELD_PREP(MSG_TOKEN_ID_MASK, hdr->seq) |
  FIELD_PREP(MSG_PROTOCOL_ID_MASK, hdr->protocol_id);
}
