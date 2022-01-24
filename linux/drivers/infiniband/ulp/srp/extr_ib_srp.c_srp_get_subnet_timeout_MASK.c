#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct srp_host {TYPE_1__* srp_dev; int /*<<< orphan*/  port; } ;
struct ib_port_attr {int subnet_timeout; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {TYPE_2__* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static u8 FUNC4(struct srp_host *host)
{
	struct ib_port_attr attr;
	int ret;
	u8 subnet_timeout = 18;

	ret = FUNC1(host->srp_dev->dev, host->port, &attr);
	if (ret == 0)
		subnet_timeout = attr.subnet_timeout;

	if (FUNC3(subnet_timeout < 15))
		FUNC2("%s: subnet timeout %d may cause SRP login to fail.\n",
			FUNC0(&host->srp_dev->dev->dev), subnet_timeout);

	return subnet_timeout;
}