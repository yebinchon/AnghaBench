
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_packet {int dummy; } ;
struct fw_ohci {int at_response_ctx; } ;
struct fw_card {int dummy; } ;


 int at_context_transmit (int *,struct fw_packet*) ;
 struct fw_ohci* fw_ohci (struct fw_card*) ;

__attribute__((used)) static void ohci_send_response(struct fw_card *card, struct fw_packet *packet)
{
 struct fw_ohci *ohci = fw_ohci(card);

 at_context_transmit(&ohci->at_response_ctx, packet);
}
