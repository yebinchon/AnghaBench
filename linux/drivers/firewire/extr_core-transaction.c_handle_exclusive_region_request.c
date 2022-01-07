
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_request {int length; int data; } ;
struct fw_packet {int generation; int * header; } ;
struct fw_card {int dummy; } ;
struct fw_address_handler {int callback_data; int (* address_callback ) (struct fw_card*,struct fw_request*,int,int,int,int ,unsigned long long,int ,int ,int ) ;} ;


 int HEADER_GET_DESTINATION (int ) ;
 int HEADER_GET_EXTENDED_TCODE (int ) ;
 int HEADER_GET_SOURCE (int ) ;
 int HEADER_GET_TCODE (int ) ;
 int RCODE_ADDRESS_ERROR ;
 int TCODE_LOCK_REQUEST ;
 int address_handler_list ;
 int fw_send_response (struct fw_card*,struct fw_request*,int ) ;
 struct fw_address_handler* lookup_enclosing_address_handler (int *,unsigned long long,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct fw_card*,struct fw_request*,int,int,int,int ,unsigned long long,int ,int ,int ) ;

__attribute__((used)) static void handle_exclusive_region_request(struct fw_card *card,
         struct fw_packet *p,
         struct fw_request *request,
         unsigned long long offset)
{
 struct fw_address_handler *handler;
 int tcode, destination, source;

 destination = HEADER_GET_DESTINATION(p->header[0]);
 source = HEADER_GET_SOURCE(p->header[1]);
 tcode = HEADER_GET_TCODE(p->header[0]);
 if (tcode == TCODE_LOCK_REQUEST)
  tcode = 0x10 + HEADER_GET_EXTENDED_TCODE(p->header[3]);

 rcu_read_lock();
 handler = lookup_enclosing_address_handler(&address_handler_list,
         offset, request->length);
 if (handler)
  handler->address_callback(card, request,
       tcode, destination, source,
       p->generation, offset,
       request->data, request->length,
       handler->callback_data);
 rcu_read_unlock();

 if (!handler)
  fw_send_response(card, request, RCODE_ADDRESS_ERROR);
}
