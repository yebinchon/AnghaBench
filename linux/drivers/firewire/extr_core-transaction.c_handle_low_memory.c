
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;


 int RCODE_TYPE_ERROR ;
 int fw_send_response (struct fw_card*,struct fw_request*,int ) ;

__attribute__((used)) static void handle_low_memory(struct fw_card *card, struct fw_request *request,
  int tcode, int destination, int source, int generation,
  unsigned long long offset, void *payload, size_t length,
  void *callback_data)
{




 fw_send_response(card, request, RCODE_TYPE_ERROR);
}
