
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_operation_msg_hdr {int dummy; } ;
struct gb_host_device {size_t buffer_size_max; } ;
struct gb_connection {struct gb_host_device* hd; } ;



size_t gb_operation_get_payload_size_max(struct gb_connection *connection)
{
 struct gb_host_device *hd = connection->hd;

 return hd->buffer_size_max - sizeof(struct gb_operation_msg_hdr);
}
