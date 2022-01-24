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
struct ipoctal {struct ipack_device* dev; } ;
struct ipack_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  slot; TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus_nr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ipoctal*) ; 
 int FUNC1 (struct ipoctal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoctal*) ; 
 struct ipoctal* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ipack_device *dev)
{
	int res;
	struct ipoctal *ipoctal;

	ipoctal = FUNC3(sizeof(struct ipoctal), GFP_KERNEL);
	if (ipoctal == NULL)
		return -ENOMEM;

	ipoctal->dev = dev;
	res = FUNC1(ipoctal, dev->bus->bus_nr, dev->slot);
	if (res)
		goto out_uninst;

	FUNC0(&dev->dev, ipoctal);
	return 0;

out_uninst:
	FUNC2(ipoctal);
	return res;
}