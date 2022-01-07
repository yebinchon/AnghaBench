
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_msg_hdr {int flags; int seq; int host; int type; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void ti_sci_dump_header_dbg(struct device *dev,
       struct ti_sci_msg_hdr *hdr)
{
 dev_dbg(dev, "MSGHDR:type=0x%04x host=0x%02x seq=0x%02x flags=0x%08x\n",
  hdr->type, hdr->host, hdr->seq, hdr->flags);
}
