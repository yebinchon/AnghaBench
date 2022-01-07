
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct gb_svc_conn_create_request {void* flags; scalar_t__ tc; void* cport2_id; void* intf2_id; void* cport1_id; void* intf1_id; } ;
struct gb_svc {int connection; } ;
typedef int request ;


 int GB_SVC_TYPE_CONN_CREATE ;
 void* cpu_to_le16 (int ) ;
 int gb_operation_sync (int ,int ,struct gb_svc_conn_create_request*,int,int *,int ) ;

int gb_svc_connection_create(struct gb_svc *svc,
        u8 intf1_id, u16 cport1_id,
        u8 intf2_id, u16 cport2_id,
        u8 cport_flags)
{
 struct gb_svc_conn_create_request request;

 request.intf1_id = intf1_id;
 request.cport1_id = cpu_to_le16(cport1_id);
 request.intf2_id = intf2_id;
 request.cport2_id = cpu_to_le16(cport2_id);
 request.tc = 0;
 request.flags = cport_flags;

 return gb_operation_sync(svc->connection, GB_SVC_TYPE_CONN_CREATE,
     &request, sizeof(request), ((void*)0), 0);
}
