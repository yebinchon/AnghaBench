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
struct TYPE_2__ {int /*<<< orphan*/  supplies; } ;
struct i2c_hid {TYPE_1__ pdata; scalar_t__ bufsize; struct hid_device* hid; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct i2c_hid*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 struct i2c_hid* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_hid*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct i2c_hid *ihid = FUNC3(client);
	struct hid_device *hid;

	hid = ihid->hid;
	FUNC2(hid);

	FUNC1(client->irq, ihid);

	if (ihid->bufsize)
		FUNC4(ihid);

	FUNC5(FUNC0(ihid->pdata.supplies),
			       ihid->pdata.supplies);

	return 0;
}