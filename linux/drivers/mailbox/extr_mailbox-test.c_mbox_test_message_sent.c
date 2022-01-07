
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_client {int dev; } ;


 int dev_info (int ,char*) ;
 int dev_warn (int ,char*,int) ;

__attribute__((used)) static void mbox_test_message_sent(struct mbox_client *client,
       void *message, int r)
{
 if (r)
  dev_warn(client->dev,
    "Client: Message could not be sent: %d\n", r);
 else
  dev_info(client->dev,
    "Client: Message sent\n");
}
