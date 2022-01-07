
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gb_message {TYPE_1__* operation; } ;
struct gb_connection {int hd_cport_id; TYPE_3__* hd; } ;
typedef int gfp_t ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {int (* message_send ) (TYPE_3__*,int ,struct gb_message*,int ) ;} ;
struct TYPE_4__ {struct gb_connection* connection; } ;


 int stub1 (TYPE_3__*,int ,struct gb_message*,int ) ;
 int trace_gb_message_send (struct gb_message*) ;

__attribute__((used)) static int gb_message_send(struct gb_message *message, gfp_t gfp)
{
 struct gb_connection *connection = message->operation->connection;

 trace_gb_message_send(message);
 return connection->hd->driver->message_send(connection->hd,
     connection->hd_cport_id,
     message,
     gfp);
}
