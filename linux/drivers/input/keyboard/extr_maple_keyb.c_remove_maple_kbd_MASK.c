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
struct maple_device {int dummy; } ;
struct device {int dummy; } ;
struct dc_kbd {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_kbd*) ; 
 struct dc_kbd* FUNC2 (struct maple_device*) ; 
 int /*<<< orphan*/  maple_keyb_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct maple_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct maple_device* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct maple_device *mdev = FUNC6(dev);
	struct dc_kbd *kbd = FUNC2(mdev);

	FUNC4(&maple_keyb_mutex);

	FUNC0(kbd->dev);
	FUNC1(kbd);

	FUNC3(mdev, NULL);

	FUNC5(&maple_keyb_mutex);
	return 0;
}