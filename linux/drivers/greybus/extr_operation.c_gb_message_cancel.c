
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gb_message {TYPE_2__* operation; } ;
struct gb_host_device {TYPE_3__* driver; } ;
struct TYPE_6__ {int (* message_cancel ) (struct gb_message*) ;} ;
struct TYPE_5__ {TYPE_1__* connection; } ;
struct TYPE_4__ {struct gb_host_device* hd; } ;


 int stub1 (struct gb_message*) ;

__attribute__((used)) static void gb_message_cancel(struct gb_message *message)
{
 struct gb_host_device *hd = message->operation->connection->hd;

 hd->driver->message_cancel(message);
}
