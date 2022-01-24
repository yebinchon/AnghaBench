#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mbox_client {int tx_block; int knows_txdone; int tx_tout; int /*<<< orphan*/  tx_done; int /*<<< orphan*/  tx_prepare; int /*<<< orphan*/  rx_callback; int /*<<< orphan*/ * dev; } ;
struct mbox_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mbox_chan* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 struct mbox_client* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct mbox_chan* FUNC4 (struct mbox_client*,char const*) ; 
 int /*<<< orphan*/  mbox_test_message_sent ; 
 int /*<<< orphan*/  mbox_test_prepare_message ; 
 int /*<<< orphan*/  mbox_test_receive_message ; 

__attribute__((used)) static struct mbox_chan *
FUNC5(struct platform_device *pdev, const char *name)
{
	struct mbox_client *client;
	struct mbox_chan *channel;

	client = FUNC3(&pdev->dev, sizeof(*client), GFP_KERNEL);
	if (!client)
		return FUNC0(-ENOMEM);

	client->dev		= &pdev->dev;
	client->rx_callback	= mbox_test_receive_message;
	client->tx_prepare	= mbox_test_prepare_message;
	client->tx_done		= mbox_test_message_sent;
	client->tx_block	= true;
	client->knows_txdone	= false;
	client->tx_tout		= 500;

	channel = FUNC4(client, name);
	if (FUNC1(channel)) {
		FUNC2(&pdev->dev, "Failed to request %s channel\n", name);
		return NULL;
	}

	return channel;
}