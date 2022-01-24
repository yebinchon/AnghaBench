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
struct mcb_device {int /*<<< orphan*/  bus; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mcb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mcb_device* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct mcb_device *mdev = FUNC2(dev);

	FUNC1(mdev->bus);
	FUNC0(mdev);
}