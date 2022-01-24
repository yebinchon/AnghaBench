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
typedef  int /*<<< orphan*/  u32 ;
struct tpiu_drvdata {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct coresight_device {TYPE_1__ dev; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 struct tpiu_drvdata* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tpiu_drvdata*) ; 

__attribute__((used)) static int FUNC4(struct coresight_device *csdev, u32 mode, void *__unused)
{
	struct tpiu_drvdata *drvdata = FUNC2(csdev->dev.parent);

	FUNC3(drvdata);
	FUNC0(csdev->refcnt);
	FUNC1(&csdev->dev, "TPIU enabled\n");
	return 0;
}