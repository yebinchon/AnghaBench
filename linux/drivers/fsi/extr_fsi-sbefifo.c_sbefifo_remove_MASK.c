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
struct sbefifo {int dead; TYPE_1__ dev; int /*<<< orphan*/  cdev; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct sbefifo* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  sbefifo_unregister_child ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct sbefifo *sbefifo = FUNC2(dev);

	FUNC1(dev, "Removing sbefifo device...\n");

	FUNC5(&sbefifo->lock);
	sbefifo->dead = true;
	FUNC6(&sbefifo->lock);

	FUNC0(&sbefifo->cdev, &sbefifo->dev);
	FUNC4(sbefifo->dev.devt);
	FUNC3(dev, NULL, sbefifo_unregister_child);
	FUNC7(&sbefifo->dev);

	return 0;
}