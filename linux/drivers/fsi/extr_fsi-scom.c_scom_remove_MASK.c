#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  devt; } ;
struct scom_device {int dead; TYPE_1__ dev; int /*<<< orphan*/  cdev; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct scom_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct scom_device *scom = FUNC1(dev);

	FUNC3(&scom->lock);
	scom->dead = true;
	FUNC4(&scom->lock);
	FUNC0(&scom->cdev, &scom->dev);
	FUNC2(scom->dev.devt);
	FUNC5(&scom->dev);

	return 0;
}