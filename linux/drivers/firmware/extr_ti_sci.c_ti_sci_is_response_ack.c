
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_msg_hdr {int flags; } ;


 int TI_SCI_FLAG_RESP_GENERIC_ACK ;

__attribute__((used)) static inline bool ti_sci_is_response_ack(void *r)
{
 struct ti_sci_msg_hdr *hdr = r;

 return hdr->flags & TI_SCI_FLAG_RESP_GENERIC_ACK ? 1 : 0;
}
