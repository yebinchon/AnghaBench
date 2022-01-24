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
struct block_device {int /*<<< orphan*/  bd_dev; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 struct block_device* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

dev_t FUNC4(const char *path)
{
	dev_t dev;
	struct block_device *bdev;

	bdev = FUNC2(path);
	if (FUNC0(bdev))
		dev = FUNC3(path);
	else {
		dev = bdev->bd_dev;
		FUNC1(bdev);
	}

	return dev;
}