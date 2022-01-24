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
struct hv_kbd_dev {int /*<<< orphan*/  hv_serio; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 struct hv_kbd_dev* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hv_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hv_kbd_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hv_device *hv_dev)
{
	struct hv_kbd_dev *kbd_dev = FUNC0(hv_dev);

	FUNC3(kbd_dev->hv_serio);
	FUNC4(hv_dev->channel);
	FUNC2(kbd_dev);

	FUNC1(hv_dev, NULL);

	return 0;
}