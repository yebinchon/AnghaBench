
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fw_request {int length; } ;
struct fw_packet {scalar_t__ ack; int* header; } ;
struct fw_card {int dummy; } ;


 scalar_t__ ACK_COMPLETE ;
 scalar_t__ ACK_PENDING ;
 scalar_t__ HEADER_GET_OFFSET_HIGH (int) ;
 int HEADER_GET_TCODE (int) ;
 scalar_t__ TCODE_IS_LINK_INTERNAL (int ) ;
 struct fw_request* allocate_request (struct fw_card*,struct fw_packet*) ;
 int fw_cdev_handle_phy_packet (struct fw_card*,struct fw_packet*) ;
 int handle_exclusive_region_request (struct fw_card*,struct fw_packet*,struct fw_request*,unsigned long long) ;
 int handle_fcp_region_request (struct fw_card*,struct fw_packet*,struct fw_request*,unsigned long long) ;
 int is_in_fcp_region (unsigned long long,int ) ;

void fw_core_handle_request(struct fw_card *card, struct fw_packet *p)
{
 struct fw_request *request;
 unsigned long long offset;

 if (p->ack != ACK_PENDING && p->ack != ACK_COMPLETE)
  return;

 if (TCODE_IS_LINK_INTERNAL(HEADER_GET_TCODE(p->header[0]))) {
  fw_cdev_handle_phy_packet(card, p);
  return;
 }

 request = allocate_request(card, p);
 if (request == ((void*)0)) {

  return;
 }

 offset = ((u64)HEADER_GET_OFFSET_HIGH(p->header[1]) << 32) |
  p->header[2];

 if (!is_in_fcp_region(offset, request->length))
  handle_exclusive_region_request(card, p, request, offset);
 else
  handle_fcp_region_request(card, p, request, offset);

}
