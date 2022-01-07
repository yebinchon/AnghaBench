
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_msg_hdr {size_t length; int msg_complete; scalar_t__ reserved; scalar_t__ fw_addr; scalar_t__ host_addr; } ;



__attribute__((used)) static inline void ishtp_hbm_hdr(struct ishtp_msg_hdr *hdr, size_t length)
{
 hdr->host_addr = 0;
 hdr->fw_addr = 0;
 hdr->length = length;
 hdr->msg_complete = 1;
 hdr->reserved = 0;
}
