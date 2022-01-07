
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_msg_hdr {int protocol_id; int seq; int id; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int ,int ,int ) ;

__attribute__((used)) static inline void scmi_dump_header_dbg(struct device *dev,
     struct scmi_msg_hdr *hdr)
{
 dev_dbg(dev, "Message ID: %x Sequence ID: %x Protocol: %x\n",
  hdr->id, hdr->seq, hdr->protocol_id);
}
