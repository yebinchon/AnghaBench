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
struct TYPE_4__ {int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {char const* name; TYPE_2__ id; int /*<<< orphan*/  uniq; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ dev; int /*<<< orphan*/  phys; } ;
struct hid_device {int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bus; int /*<<< orphan*/  uniq; int /*<<< orphan*/  dev; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 struct input_dev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udraw_close ; 
 int /*<<< orphan*/  udraw_open ; 

__attribute__((used)) static struct input_dev *FUNC3(struct hid_device *hdev,
		const char *name)
{
	struct input_dev *input_dev;

	input_dev = FUNC0(&hdev->dev);
	if (!input_dev)
		return NULL;

	input_dev->name = name;
	input_dev->phys = hdev->phys;
	input_dev->dev.parent = &hdev->dev;
	input_dev->open = udraw_open;
	input_dev->close = udraw_close;
	input_dev->uniq = hdev->uniq;
	input_dev->id.bustype = hdev->bus;
	input_dev->id.vendor  = hdev->vendor;
	input_dev->id.product = hdev->product;
	input_dev->id.version = hdev->version;
	FUNC2(input_dev, FUNC1(hdev));

	return input_dev;
}