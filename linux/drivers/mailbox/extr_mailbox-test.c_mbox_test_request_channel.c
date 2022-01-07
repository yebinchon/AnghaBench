
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mbox_client {int tx_block; int knows_txdone; int tx_tout; int tx_done; int tx_prepare; int rx_callback; int * dev; } ;
struct mbox_chan {int dummy; } ;


 int ENOMEM ;
 struct mbox_chan* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mbox_chan*) ;
 int dev_warn (int *,char*,char const*) ;
 struct mbox_client* devm_kzalloc (int *,int,int ) ;
 struct mbox_chan* mbox_request_channel_byname (struct mbox_client*,char const*) ;
 int mbox_test_message_sent ;
 int mbox_test_prepare_message ;
 int mbox_test_receive_message ;

__attribute__((used)) static struct mbox_chan *
mbox_test_request_channel(struct platform_device *pdev, const char *name)
{
 struct mbox_client *client;
 struct mbox_chan *channel;

 client = devm_kzalloc(&pdev->dev, sizeof(*client), GFP_KERNEL);
 if (!client)
  return ERR_PTR(-ENOMEM);

 client->dev = &pdev->dev;
 client->rx_callback = mbox_test_receive_message;
 client->tx_prepare = mbox_test_prepare_message;
 client->tx_done = mbox_test_message_sent;
 client->tx_block = 1;
 client->knows_txdone = 0;
 client->tx_tout = 500;

 channel = mbox_request_channel_byname(client, name);
 if (IS_ERR(channel)) {
  dev_warn(&pdev->dev, "Failed to request %s channel\n", name);
  return ((void*)0);
 }

 return channel;
}
