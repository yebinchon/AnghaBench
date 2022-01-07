
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct gb_operation_msg_hdr {int operation_id; } ;
struct gb_operation {int type; struct gb_message* response; TYPE_1__* request; TYPE_3__* connection; } ;
struct gb_message {TYPE_2__* header; struct gb_operation* operation; } ;
struct gb_host_device {int dummy; } ;
typedef int gfp_t ;
struct TYPE_6__ {struct gb_host_device* hd; } ;
struct TYPE_5__ {int operation_id; } ;
struct TYPE_4__ {struct gb_operation_msg_hdr* header; } ;


 int GB_MESSAGE_TYPE_RESPONSE ;
 struct gb_message* gb_operation_message_alloc (struct gb_host_device*,int,size_t,int ) ;

bool gb_operation_response_alloc(struct gb_operation *operation,
     size_t response_size, gfp_t gfp)
{
 struct gb_host_device *hd = operation->connection->hd;
 struct gb_operation_msg_hdr *request_header;
 struct gb_message *response;
 u8 type;

 type = operation->type | GB_MESSAGE_TYPE_RESPONSE;
 response = gb_operation_message_alloc(hd, type, response_size, gfp);
 if (!response)
  return 0;
 response->operation = operation;







 request_header = operation->request->header;
 response->header->operation_id = request_header->operation_id;
 operation->response = response;

 return 1;
}
