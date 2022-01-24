#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ssi_protocol {int /*<<< orphan*/  lock; int /*<<< orphan*/  main_state; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct hsi_client {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  HANDSHAKE ; 
 int /*<<< orphan*/  SSIP_WAKETEST_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (struct hsi_client*,int) ; 
 struct ssi_protocol* FUNC3 (struct hsi_client*) ; 
 int FUNC4 (struct hsi_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hsi_client*,int) ; 
 int /*<<< orphan*/  ssip_port_event ; 
 int /*<<< orphan*/  FUNC9 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hsi_client* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct hsi_client *cl = FUNC11(dev->dev.parent);
	struct ssi_protocol *ssi = FUNC3(cl);
	int err;

	err = FUNC2(cl, 1);
	if (err < 0) {
		FUNC1(&cl->device, "SSI port already claimed\n");
		return err;
	}
	err = FUNC4(cl, ssip_port_event);
	if (err < 0) {
		FUNC1(&cl->device, "Register HSI port event failed (%d)\n",
			err);
		return err;
	}
	FUNC0(&cl->device, "Configuring SSI port\n");
	FUNC5(cl);

	if (!FUNC10(SSIP_WAKETEST_FLAG, &ssi->flags))
		FUNC8(cl, 1); /* FIXME: To be removed */

	FUNC6(&ssi->lock);
	ssi->main_state = HANDSHAKE;
	FUNC7(&ssi->lock);

	FUNC9(cl);

	return 0;
}