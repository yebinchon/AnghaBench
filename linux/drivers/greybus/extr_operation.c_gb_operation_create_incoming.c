
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct gb_operation_msg_hdr {int dummy; } ;
struct gb_operation {TYPE_1__* request; scalar_t__ id; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int header; } ;


 unsigned long GB_OPERATION_FLAG_INCOMING ;
 unsigned long GB_OPERATION_FLAG_UNIDIRECTIONAL ;
 int GB_REQUEST_TYPE_INVALID ;
 int GFP_ATOMIC ;
 struct gb_operation* gb_operation_create_common (struct gb_connection*,int ,size_t,int ,unsigned long,int ) ;
 int memcpy (int ,void*,size_t) ;
 int trace_gb_operation_create_incoming (struct gb_operation*) ;

__attribute__((used)) static struct gb_operation *
gb_operation_create_incoming(struct gb_connection *connection, u16 id,
        u8 type, void *data, size_t size)
{
 struct gb_operation *operation;
 size_t request_size;
 unsigned long flags = GB_OPERATION_FLAG_INCOMING;


 request_size = size - sizeof(struct gb_operation_msg_hdr);

 if (!id)
  flags |= GB_OPERATION_FLAG_UNIDIRECTIONAL;

 operation = gb_operation_create_common(connection, type,
            request_size,
            GB_REQUEST_TYPE_INVALID,
            flags, GFP_ATOMIC);
 if (!operation)
  return ((void*)0);

 operation->id = id;
 memcpy(operation->request->header, data, size);
 trace_gb_operation_create_incoming(operation);

 return operation;
}
