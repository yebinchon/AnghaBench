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
struct hidpp_ff_private_data {int /*<<< orphan*/  effect_ids; int /*<<< orphan*/  wq; TYPE_1__* hidpp; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;
struct ff_device {struct hidpp_ff_private_data* private; } ;
struct TYPE_2__ {struct hid_device* hid_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_range ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ff_device *ff)
{
	struct hidpp_ff_private_data *data = ff->private;
	struct hid_device *hid = data->hidpp->hid_dev;

	FUNC2(hid, "Unloading HID++ force feedback.\n");

	FUNC1(&hid->dev, &dev_attr_range);
	FUNC0(data->wq);
	FUNC3(data->effect_ids);
}