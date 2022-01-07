
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_operation_msg_hdr {int type; int operation_id; int size; } ;
struct gb_connection {scalar_t__ state; int name; TYPE_1__* hd; } ;
struct device {int dummy; } ;
typedef int header ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ GB_CONNECTION_STATE_DISABLED ;
 int GB_MESSAGE_TYPE_RESPONSE ;
 int dev_err_ratelimited (struct device*,char*,int ,...) ;
 int dev_warn_ratelimited (struct device*,char*,int ,size_t) ;
 scalar_t__ gb_connection_is_offloaded (struct gb_connection*) ;
 int gb_connection_recv_request (struct gb_connection*,struct gb_operation_msg_hdr*,void*,size_t) ;
 int gb_connection_recv_response (struct gb_connection*,struct gb_operation_msg_hdr*,void*,size_t) ;
 size_t le16_to_cpu (int ) ;
 int memcpy (struct gb_operation_msg_hdr*,void*,int) ;

void gb_connection_recv(struct gb_connection *connection,
   void *data, size_t size)
{
 struct gb_operation_msg_hdr header;
 struct device *dev = &connection->hd->dev;
 size_t msg_size;

 if (connection->state == GB_CONNECTION_STATE_DISABLED ||
     gb_connection_is_offloaded(connection)) {
  dev_warn_ratelimited(dev, "%s: dropping %zu received bytes\n",
         connection->name, size);
  return;
 }

 if (size < sizeof(header)) {
  dev_err_ratelimited(dev, "%s: short message received\n",
        connection->name);
  return;
 }


 memcpy(&header, data, sizeof(header));
 msg_size = le16_to_cpu(header.size);
 if (size < msg_size) {
  dev_err_ratelimited(dev,
        "%s: incomplete message 0x%04x of type 0x%02x received (%zu < %zu)\n",
        connection->name,
        le16_to_cpu(header.operation_id),
        header.type, size, msg_size);
  return;
 }

 if (header.type & GB_MESSAGE_TYPE_RESPONSE) {
  gb_connection_recv_response(connection, &header, data,
         msg_size);
 } else {
  gb_connection_recv_request(connection, &header, data,
        msg_size);
 }
}
