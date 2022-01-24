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
struct gnss_device {int /*<<< orphan*/  id; int /*<<< orphan*/  read_fifo; struct gnss_device* write_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  gnss_minors ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gnss_device*) ; 
 struct gnss_device* FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct gnss_device *gdev = FUNC3(dev);

	FUNC2(gdev->write_buf);
	FUNC1(&gdev->read_fifo);
	FUNC0(&gnss_minors, gdev->id);
	FUNC2(gdev);
}